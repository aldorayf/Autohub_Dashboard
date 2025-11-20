#!/usr/bin/env python3
"""
Google Sheets to Supabase Migration Script
Migrates data from 3 CSV files to Supabase database
"""

import csv
import os
from datetime import datetime
from supabase import create_client, Client

# =====================================================
# CONFIGURATION
# =====================================================
# Replace with your Supabase credentials
SUPABASE_URL = "YOUR_SUPABASE_URL"
SUPABASE_KEY = "YOUR_SUPABASE_SERVICE_ROLE_KEY"  # Use service role key for admin operations

# CSV file paths (export from Google Sheets)
MANIFEST_CSV = "AutoHub Vessel Management - Manifest_Data.csv"
CUSTOMER_DETAILS_CSV = "AutoHub Vessel Management - Customer_Details.csv"
TASK_STATUS_CSV = "AutoHub Vessel Management - Task_Status.csv"

# =====================================================
# INITIALIZE SUPABASE CLIENT
# =====================================================
supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)

# =====================================================
# HELPER FUNCTIONS
# =====================================================

def parse_date(date_str):
    """Parse date in DD/MM/YYYY format to YYYY-MM-DD"""
    if not date_str or date_str.strip() == '':
        return None

    try:
        # Try DD/MM/YYYY format
        if '/' in date_str:
            parts = date_str.split('/')
            if len(parts) == 3:
                day, month, year = parts
                return f"{year}-{month.zfill(2)}-{day.zfill(2)}"

        # Try YYYY-MM-DD format (already correct)
        if '-' in date_str and len(date_str) == 10:
            return date_str

        # Try other formats
        for fmt in ['%m/%d/%Y', '%Y-%m-%d', '%d-%m-%Y']:
            try:
                dt = datetime.strptime(date_str, fmt)
                return dt.strftime('%Y-%m-%d')
            except:
                continue

        return None
    except Exception as e:
        print(f"⚠️  Error parsing date '{date_str}': {e}")
        return None

def normalize_task_status(value):
    """Normalize task status values"""
    if not value or value.strip() == '':
        return 'incomplete'

    value = str(value).strip().lower()

    # Map various values
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

# =====================================================
# READ CSV FILES
# =====================================================

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
print(f"✅ Loaded {len(task_status)} task status rows")

# =====================================================
# GROUP DATA BY VESSEL
# =====================================================

vessels_map = {}

for row in manifest_data:
    vessel_name = row.get('Vessel', '').strip()
    voyage_number = row.get('Voy', '').strip()
    ets = parse_date(row.get('ETS', ''))

    if not vessel_name or not voyage_number:
        print(f"⚠️  Skipping row with missing vessel/voyage: {row.get('Customer', 'Unknown')}")
        continue

    vessel_key = f"{vessel_name}_{voyage_number}"

    if vessel_key not in vessels_map:
        vessels_map[vessel_key] = {
            'vessel_name': vessel_name,
            'voyage_number': voyage_number,
            'ets': ets,
            'customers': []
        }

    # Get BL number from multiple possible fields
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
        print(f"⚠️  Skipping row with missing required fields: {customer_name}")
        continue

    # Find matching customer details
    customer_detail = next((c for c in customer_details if c.get('BL_No', '').strip() == bl_number), {})

    # Find matching task status
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

print(f"\n✅ Grouped data into {len(vessels_map)} vessels")

# =====================================================
# INSERT INTO SUPABASE
# =====================================================

print("\n🚀 Starting migration to Supabase...\n")

total_vessels = 0
total_customers = 0
total_tasks = 0
errors = []

for vessel_key, vessel_info in vessels_map.items():
    try:
        print(f"📦 Processing vessel: {vessel_info['vessel_name']} (Voyage {vessel_info['voyage_number']})")

        # Insert or get vessel
        vessel_response = supabase.table('vessels').upsert({
            'vessel_name': vessel_info['vessel_name'],
            'voyage_number': vessel_info['voyage_number'],
            'ets': vessel_info['ets']
        }, on_conflict='vessel_name,voyage_number').execute()

        vessel_id = vessel_response.data[0]['id']
        total_vessels += 1
        print(f"  ✅ Vessel created/updated")

        # Insert customers for this vessel
        for customer_info in vessel_info['customers']:
            try:
                customer_detail = customer_info['customer_detail']

                # Insert customer
                customer_response = supabase.table('customers').upsert({
                    'vessel_id': vessel_id,
                    'customer_name': customer_info['customer_name'],
                    'bl_number': customer_info['bl_number'],
                    'b_number': customer_detail.get('BNumber', '').strip() or None,
                    'email': customer_detail.get('Email', '').strip() or None,
                    'notes': customer_detail.get('Notes', '').strip() or None,
                    'pod': customer_info['pod'],
                    'eta': customer_info['eta'],
                    'inland': customer_detail.get('Inland', 'UNKNOWN').strip() or 'UNKNOWN'
                }, on_conflict='bl_number,vessel_id').execute()

                customer_id = customer_response.data[0]['id']
                total_customers += 1

                # Insert tasks for this customer
                task_data = customer_info['task_data']

                tasks_record = {
                    'customer_id': customer_id,
                    # Map all 22 tasks
                    'review_customer_docs': normalize_task_status(task_data.get('review_customer_docs', 'incomplete')),
                    'file_single_entry_bond': normalize_task_status(task_data.get('file_single_entry_bond', 'incomplete')),
                    'isf_transmit': normalize_task_status(task_data.get('isf_transmit', 'incomplete')),
                    'isf_match': normalize_task_status(task_data.get('isf_match', 'incomplete')),
                    'entry_created': normalize_task_status(task_data.get('entry_created', 'incomplete')),
                    'inland_confirm': normalize_task_status(task_data.get('inland_confirm', 'incomplete')),
                    'update_betrix_transport': normalize_task_status(task_data.get('update_betrix_transport', 'incomplete')),
                    'awis_invoice': normalize_task_status(task_data.get('awis_invoice', 'incomplete')),
                    'noa_received': normalize_task_status(task_data.get('noa_received', 'NOT RECEIVED')),
                    'noa_accounting': normalize_task_status(task_data.get('noa_accounting', 'incomplete')),
                    'bitrix_eta': normalize_task_status(task_data.get('bitrix_eta', 'incomplete')),
                    'arrival_email': normalize_task_status(task_data.get('arrival_email', 'incomplete')),
                    'payment_check': normalize_task_status(task_data.get('payment_check', 'UNPAID')),
                    'entry_transmitted': normalize_task_status(task_data.get('entry_transmitted', 'incomplete')),
                    'cbp_release': normalize_task_status(task_data.get('cbp_release', 'incomplete')),
                    'ssl_request': normalize_task_status(task_data.get('ssl_request', 'incomplete')),
                    'ssl_confirmed': normalize_task_status(task_data.get('ssl_confirmed', 'incomplete')),
                    'release_notification': normalize_task_status(task_data.get('release_notification', 'incomplete')),
                    'upload_release_docs': normalize_task_status(task_data.get('upload_release_docs', 'incomplete')),
                    'customs_clear_bitrix': normalize_task_status(task_data.get('customs_clear_bitrix', 'incomplete')),
                    'reg_docs_cbp': normalize_task_status(task_data.get('reg_docs_cbp', 'incomplete')),
                    'reg_docs_bitrix': normalize_task_status(task_data.get('reg_docs_bitrix', 'incomplete'))
                }

                # Add task dates if they exist
                for task_field in ['review_customer_docs', 'file_single_entry_bond', 'isf_transmit',
                                   'isf_match', 'entry_created', 'inland_confirm', 'update_betrix_transport',
                                   'awis_invoice', 'noa_received', 'noa_accounting', 'bitrix_eta',
                                   'arrival_email', 'payment_check', 'entry_transmitted', 'cbp_release',
                                   'ssl_request', 'ssl_confirmed', 'release_notification', 'upload_release_docs',
                                   'customs_clear_bitrix', 'reg_docs_cbp', 'reg_docs_bitrix']:
                    date_field = f"{task_field}_date"
                    if date_field in task_data and task_data[date_field]:
                        parsed_date = parse_date(task_data[date_field])
                        if parsed_date:
                            tasks_record[date_field] = parsed_date

                supabase.table('tasks').upsert(tasks_record, on_conflict='customer_id').execute()
                total_tasks += 1

                print(f"    ✅ Customer: {customer_info['customer_name']} (BL: {customer_info['bl_number']})")

            except Exception as e:
                error_msg = f"Error processing customer {customer_info['customer_name']}: {str(e)}"
                errors.append(error_msg)
                print(f"    ❌ {error_msg}")

    except Exception as e:
        error_msg = f"Error processing vessel {vessel_key}: {str(e)}"
        errors.append(error_msg)
        print(f"  ❌ {error_msg}")

# =====================================================
# SUMMARY
# =====================================================

print("\n" + "="*60)
print("MIGRATION COMPLETE")
print("="*60)
print(f"✅ Vessels imported: {total_vessels}")
print(f"✅ Customers imported: {total_customers}")
print(f"✅ Task records created: {total_tasks}")

if errors:
    print(f"\n⚠️  {len(errors)} errors occurred:")
    for error in errors[:10]:  # Show first 10 errors
        print(f"  - {error}")
    if len(errors) > 10:
        print(f"  ... and {len(errors) - 10} more")
else:
    print("\n🎉 No errors! Migration completed successfully!")

print("\n🚀 You can now log into your dashboard to see the imported data!")
