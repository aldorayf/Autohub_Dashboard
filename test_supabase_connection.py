#!/usr/bin/env python3
"""Test Supabase connection and check if tables exist"""

from supabase import create_client, Client

SUPABASE_URL = "https://lmklxusmjrkrceveuzvb.supabase.co"
SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxta2x4dXNtanJrcmNldmV1enZiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2MzYwODY4NiwiZXhwIjoyMDc5MTg0Njg2fQ.TkHWQtif9G3VK0Ts5iQx3FM2h9wqSZLBBGcCljvOF4E"

print("🔌 Testing Supabase connection...")
supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)

print("✅ Client created successfully")

# Try to query vessels table
try:
    print("\n📊 Checking vessels table...")
    response = supabase.table('vessels').select('*').limit(1).execute()
    print(f"✅ Vessels table exists! Found {len(response.data)} records")
except Exception as e:
    print(f"❌ Error accessing vessels table: {e}")

# Try to query customers table
try:
    print("\n📊 Checking customers table...")
    response = supabase.table('customers').select('*').limit(1).execute()
    print(f"✅ Customers table exists! Found {len(response.data)} records")
except Exception as e:
    print(f"❌ Error accessing customers table: {e}")

# Try to query tasks table
try:
    print("\n📊 Checking tasks table...")
    response = supabase.table('tasks').select('*').limit(1).execute()
    print(f"✅ Tasks table exists! Found {len(response.data)} records")
except Exception as e:
    print(f"❌ Error accessing tasks table: {e}")

# Try a simple insert
try:
    print("\n🧪 Testing insert with service role key...")
    test_vessel = {
        'vessel_name': 'TEST VESSEL',
        'voyage_number': '999',
        'ets': '2025-12-31'
    }
    response = supabase.table('vessels').upsert(test_vessel, on_conflict='vessel_name,voyage_number').execute()
    print(f"✅ Insert test successful! Response: {response.data}")

    # Clean up test data
    supabase.table('vessels').delete().eq('vessel_name', 'TEST VESSEL').execute()
    print("✅ Test data cleaned up")
except Exception as e:
    print(f"❌ Insert test failed: {e}")
