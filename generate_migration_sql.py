#!/usr/bin/env python3
"""
Generate SQL INSERT statements from CSV files for Supabase
This bypasses REST API issues by creating SQL you can run directly
"""

import csv
import os
from datetime import datetime

# CSV file paths
MANIFEST_CSV = "AutoHub Vessel Management - Manifest_Data.csv"
CUSTOMER_DETAILS_CSV = "AutoHub Vessel Management - Customer_Details.csv"
TASK_STATUS_CSV = "AutoHub Vessel Management - Task_Status.csv"

def parse_date(date_str):
    """Parse date in DD/MM/YYYY format to YYYY-MM-DD"""
    if not date_str or date_str.strip() == '':
        return None

    try:
        if '/' in date_str:
            parts = date_str.split('/')
            if len(parts) == 3:
                day, month, year = parts
                return f"{year}-{month.zfill(2)}-{day.zfill(2)}"

        if '-' in date_str and len(date_str) == 10:
            return date_str

        return None
    except Exception as e:
        return None

def escape_sql(value):
    """Escape SQL string"""
    if value is None or value == '':
        return 'NULL'
    return "'" + str(value).replace("'", "''") + "'"

def normalize_task_status(value):
    """Normalize task status values"""
    if not value or value.strip() == '':
        return 'incomplete'

    value = str(value).strip().lower()

    if value in ['complete', 'completed', 'done']:
        return 'completed'
    elif value in ['incomplete', 'not started', 'pending']:
        return 'incomplete'
    elif value in ['in-progress', 'in progress', 'working']:
        return 'in-progress'
    elif value in ['not received']:
        return 'NOT RECEIVED'
    elif value in ['received']:
        return 'RECEIVED'
    elif value in ['unpaid']:
        return 'UNPAID'
    elif value in ['paid']:
        return 'PAID'
    else:
        return value

def read_csv_file(filepath):
    """Read CSV file and return list of dictionaries"""
    if not os.path.exists(filepath):
        print(f"❌ File not found: {filepath}")
        return []

    with open(filepath, 'r', encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)
        return list(reader)

print("📖 Reading CSV files...")
manifest_data = read_csv_file(MANIFEST_CSV)
customer_details = read_csv_file(CUSTOMER_DETAILS_CSV)
task_status = read_csv_file(TASK_STATUS_CSV)

print(f"✅ Loaded {len(manifest_data)} manifest rows")
print(f"✅ Loaded {len(customer_details)} customer detail rows")
print(f"✅ Loaded {len(task_status)} task status rows\n")

# Group data by vessel
vessels_map = {}

for row in manifest_data:
    vessel_name = row.get('Vessel', '').strip()
    voyage_number = row.get('Voy.', '').strip()
    ets = parse_date(row.get('ETS', ''))

    if not vessel_name or not voyage_number:
        continue

    vessel_key = f"{vessel_name}_{voyage_number}"

    if vessel_key not in vessels_map:
        vessels_map[vessel_key] = {
            'vessel_name': vessel_name,
            'voyage_number': voyage_number,
            'ets': ets,
            'customers': []
        }

    bl_number = (
        row.get('House No.', '') or
        row.get('House No', '') or
        row.get('BL No.', '') or
        row.get('BL No', '') or
        row.get('BL_No', '')
    ).strip()

    customer_name = row.get('Customer', '').strip()
    pod = row.get('Port', '').strip()
    eta = parse_date(row.get('ETA', ''))

    if not bl_number or not customer_name or not pod or not eta:
        continue

    customer_detail = next((c for c in customer_details if c.get('BL_No', '').strip() == bl_number), {})
    task_data = next((t for t in task_status if t.get('BL_No', '').strip() == bl_number), {})

    vessels_map[vessel_key]['customers'].append({
        'manifest_row': row,
        'customer_detail': customer_detail,
        'task_data': task_data,
        'bl_number': bl_number,
        'customer_name': customer_name,
        'pod': pod,
        'eta': eta
    })

print(f"✅ Grouped data into {len(vessels_map)} vessels\n")

# Generate SQL
output_file = "migration.sql"
with open(output_file, 'w') as f:
    f.write("-- AutoHub Dashboard Migration SQL\n")
    f.write("-- Generated from Google Sheets CSV files\n")
    f.write("-- Run this in Supabase SQL Editor\n\n")

    f.write("-- Start transaction\n")
    f.write("BEGIN;\n\n")

    vessel_counter = 0
    customer_counter = 0

    for vessel_key, vessel_info in vessels_map.items():
        vessel_counter += 1
        vessel_name = vessel_info['vessel_name'].replace("'", "''")
        voyage_number = vessel_info['voyage_number'].replace("'", "''")
        ets_value = f"'{vessel_info['ets']}'" if vessel_info['ets'] else 'NULL'

        f.write(f"-- Vessel {vessel_counter}: {vessel_name} (Voyage {voyage_number})\n")
        f.write(f"INSERT INTO vessels (vessel_name, voyage_number, ets)\n")
        f.write(f"VALUES ('{vessel_name}', '{voyage_number}', {ets_value})\n")
        f.write(f"ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;\n\n")

        for customer_info in vessel_info['customers']:
            customer_counter += 1
            customer_detail = customer_info['customer_detail']
            task_data = customer_info['task_data']

            bl_number = customer_info['bl_number'].replace("'", "''")
            customer_name = customer_info['customer_name'].replace("'", "''")
            b_number = escape_sql(customer_detail.get('BNumber', '').strip() or None)
            email = escape_sql(customer_detail.get('Email', '').strip() or None)
            notes = escape_sql(customer_detail.get('Notes', '').strip() or None)
            pod = customer_info['pod'].replace("'", "''")
            eta = customer_info['eta']
            inland = customer_detail.get('Inland', 'UNKNOWN').strip() or 'UNKNOWN'

            f.write(f"-- Customer: {customer_name}\n")
            f.write(f"WITH vessel AS (\n")
            f.write(f"  SELECT id FROM vessels WHERE vessel_name = '{vessel_name}' AND voyage_number = '{voyage_number}'\n")
            f.write(f"),\n")
            f.write(f"customer AS (\n")
            f.write(f"  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)\n")
            f.write(f"  VALUES ((SELECT id FROM vessel), '{customer_name}', '{bl_number}', {b_number}, {email}, {notes}, '{pod}', '{eta}', '{inland}')\n")
            f.write(f"  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET\n")
            f.write(f"    customer_name = EXCLUDED.customer_name,\n")
            f.write(f"    b_number = EXCLUDED.b_number,\n")
            f.write(f"    email = EXCLUDED.email,\n")
            f.write(f"    notes = EXCLUDED.notes,\n")
            f.write(f"    pod = EXCLUDED.pod,\n")
            f.write(f"    eta = EXCLUDED.eta,\n")
            f.write(f"    inland = EXCLUDED.inland\n")
            f.write(f"  RETURNING id\n")
            f.write(f")\n")

            # Build task values
            task_values = []
            task_values.append(f"customer_id = (SELECT id FROM customer)")

            for task_field in ['review_customer_docs', 'file_single_entry_bond', 'isf_transmit',
                               'isf_match', 'entry_created', 'inland_confirm', 'update_betrix_transport',
                               'awis_invoice', 'noa_received', 'noa_accounting', 'bitrix_eta',
                               'arrival_email', 'payment_check', 'entry_transmitted', 'cbp_release',
                               'ssl_request', 'ssl_confirmed', 'release_notification', 'upload_release_docs',
                               'customs_clear_bitrix', 'reg_docs_cbp', 'reg_docs_bitrix']:
                status = normalize_task_status(task_data.get(task_field, 'incomplete'))
                task_values.append(f"{task_field} = '{status}'")

                date_field = f"{task_field}_date"
                if date_field in task_data and task_data[date_field]:
                    parsed_date = parse_date(task_data[date_field])
                    if parsed_date:
                        task_values.append(f"{date_field} = '{parsed_date}'")

            f.write(f"INSERT INTO tasks (customer_id)\n")
            f.write(f"VALUES ((SELECT id FROM customer))\n")
            f.write(f"ON CONFLICT (customer_id) DO UPDATE SET\n")
            task_set_clause = ',\n  '.join(task_values[1:])
            f.write(f"  {task_set_clause};\n\n")

    f.write(f"-- Commit transaction\n")
    f.write(f"COMMIT;\n\n")
    f.write(f"-- Migration complete!\n")
    f.write(f"-- Vessels: {vessel_counter}\n")
    f.write(f"-- Customers: {customer_counter}\n")

print(f"✅ Generated SQL migration file: {output_file}")
print(f"✅ Vessels: {vessel_counter}")
print(f"✅ Customers: {customer_counter}")
print(f"\n📋 Next steps:")
print(f"1. Open Supabase SQL Editor")
print(f"2. Copy the contents of {output_file}")
print(f"3. Paste and run in SQL Editor")
print(f"4. All data will be imported!")
