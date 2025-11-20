#!/usr/bin/env python3
"""
Generate SQL to update task statuses from CSV
This fixes the tasks that were created with default values
"""

import csv
import os

# CSV file paths
TASK_STATUS_CSV = "AutoHub Vessel Management - Task_Status.csv"

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

print("📖 Reading Task Status CSV...")
task_status = read_csv_file(TASK_STATUS_CSV)
print(f"✅ Loaded {len(task_status)} task status rows\n")

# Generate SQL
output_file = "fix_tasks.sql"
with open(output_file, 'w') as f:
    f.write("-- Fix Task Statuses\n")
    f.write("-- Updates tasks with correct statuses from CSV\n\n")
    f.write("BEGIN;\n\n")

    update_count = 0

    for task_row in task_status:
        bl_number = task_row.get('BL_No', '').strip()
        if not bl_number:
            continue

        # Build SET clause for all task fields
        set_clauses = []

        task_fields = [
            'review_customer_docs', 'file_single_entry_bond', 'isf_transmit',
            'isf_match', 'entry_created', 'inland_confirm', 'update_betrix_transport',
            'awis_invoice', 'noa_received', 'noa_accounting', 'bitrix_eta',
            'arrival_email', 'payment_check', 'entry_transmitted', 'cbp_release',
            'ssl_request', 'ssl_confirmed', 'release_notification', 'upload_release_docs',
            'customs_clear_bitrix', 'reg_docs_cbp', 'reg_docs_bitrix'
        ]

        for field in task_fields:
            if field in task_row:
                status = normalize_task_status(task_row[field])
                set_clauses.append(f"  {field} = '{status}'")

        if set_clauses:
            update_count += 1
            bl_escaped = bl_number.replace("'", "''")
            f.write(f"-- Update tasks for BL: {bl_escaped}\n")
            f.write(f"UPDATE tasks\n")
            f.write(f"SET\n")
            f.write(',\n'.join(set_clauses))
            f.write(f"\nWHERE customer_id = (\n")
            f.write(f"  SELECT id FROM customers WHERE bl_number = '{bl_escaped}'\n")
            f.write(f");\n\n")

    f.write("COMMIT;\n\n")
    f.write(f"-- Updated {update_count} task records\n")

print(f"✅ Generated fix_tasks.sql with {update_count} updates")
print(f"\n📋 Next steps:")
print(f"1. Open Supabase SQL Editor")
print(f"2. Copy the contents of fix_tasks.sql")
print(f"3. Run it to update all task statuses")
