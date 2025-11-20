# Google Sheets to Supabase Migration Guide

This guide will help you migrate all your existing data from Google Sheets to Supabase.

## Prerequisites

- Python 3.7 or higher installed
- Your Google Sheets data
- Supabase project set up and running

## Step 1: Export Google Sheets to CSV

1. Open your Google Sheet: `https://docs.google.com/spreadsheets/d/1oDjo-CbFuSLllevg3NAJpFuqNDa9OnKVYgvyK2C_S54`

2. Export each tab as CSV:

   **Tab 1: Manifest_Data**
   - Click on the "Manifest_Data" tab
   - File → Download → Comma Separated Values (.csv)
   - Save as `Manifest_Data.csv`

   **Tab 2: Customer_Details**
   - Click on the "Customer_Details" tab
   - File → Download → Comma Separated Values (.csv)
   - Save as `Customer_Details.csv`

   **Tab 3: Task_Status**
   - Click on the "Task_Status" tab
   - File → Download → Comma Separated Values (.csv)
   - Save as `Task_Status.csv`

3. Move all 3 CSV files to the `Autohub_Dashboard` folder

## Step 2: Get Your Supabase Service Role Key

⚠️ **Important:** You need the **Service Role Key**, not the anon key!

1. Go to your Supabase project dashboard
2. Click on **Settings** (gear icon) → **API**
3. Scroll down to **Project API keys**
4. Copy the **`service_role`** key (NOT the anon key)
   - The service role key starts with `eyJ...` and is very long
   - This key has admin privileges needed for bulk imports

## Step 3: Configure the Migration Script

1. Open `migrate_google_sheets_to_supabase.py` in a text editor

2. Update these lines at the top:

```python
SUPABASE_URL = "YOUR_SUPABASE_URL"  # e.g., https://xxxxx.supabase.co
SUPABASE_KEY = "YOUR_SUPABASE_SERVICE_ROLE_KEY"  # Paste service role key here
```

3. Save the file

## Step 4: Install Python Dependencies

Open a terminal/command prompt in the `Autohub_Dashboard` folder and run:

```bash
pip install -r requirements.txt
```

Or if you have Python 3:

```bash
pip3 install -r requirements.txt
```

## Step 5: Run the Migration Script

```bash
python migrate_google_sheets_to_supabase.py
```

Or:

```bash
python3 migrate_google_sheets_to_supabase.py
```

## What the Script Does

The migration script will:

1. ✅ Read all 3 CSV files
2. ✅ Match data by BL_No (Bill of Lading number)
3. ✅ Group customers by vessel and voyage
4. ✅ Create vessel records with ETS dates
5. ✅ Create customer records with all details (email, notes, BNumber, inland status)
6. ✅ Create task records with all 22 task statuses
7. ✅ Parse dates from DD/MM/YYYY to YYYY-MM-DD format
8. ✅ Handle duplicates (will update existing records)

## Expected Output

You should see output like this:

```
📖 Reading CSV files...
✅ Loaded 150 manifest rows
✅ Loaded 150 customer detail rows
✅ Loaded 150 task status rows

✅ Grouped data into 5 vessels

🚀 Starting migration to Supabase...

📦 Processing vessel: HOEGH ST PETERSBURG (Voyage 07)
  ✅ Vessel created/updated
    ✅ Customer: JAMES HART (BL: HOEGAS79KS510010)
    ✅ Customer: NOAH LEE STARR (BL: HOEG0J92KS510010)
    ...

============================================================
MIGRATION COMPLETE
============================================================
✅ Vessels imported: 5
✅ Customers imported: 150
✅ Task records created: 150

🎉 No errors! Migration completed successfully!
```

## Step 6: Verify in Dashboard

1. Log into your dashboard at `login.html`
2. You should see all your vessels and customers loaded
3. All task statuses should be preserved
4. All customer details (email, notes, etc.) should be there

## Troubleshooting

### Error: "No module named 'supabase'"
**Solution:** Run `pip install -r requirements.txt` first

### Error: "File not found: Manifest_Data.csv"
**Solution:** Make sure the CSV files are in the same folder as the script

### Error: "Invalid API key"
**Solution:** Make sure you're using the **service_role** key, not the anon key

### Error: "duplicate key value violates unique constraint"
**Solution:** The script handles duplicates automatically. This error means data already exists and is being updated.

### Some customers are missing
**Solution:** Check that:
- All BL_No values match between the 3 sheets
- Required fields (Customer, BL_No, Port, ETA) are filled in
- Check the script output for skipped rows

### Dates are wrong
**Solution:** The script expects dates in DD/MM/YYYY format (like "06/04/2025"). Check your Google Sheets date format.

## Important Notes

- ⚠️ **Keep your service role key secret!** Don't share it or commit it to git
- ✅ The script uses `upsert` - it will update existing records instead of creating duplicates
- ✅ BL_No (Bill of Lading) is used as the unique identifier to match data across sheets
- ✅ All 22 tasks are migrated with their statuses
- ✅ Task dates are preserved if they exist in the Task_Status sheet

## After Migration

Once migration is complete:

1. ✅ Test the dashboard - verify all data looks correct
2. ✅ Update a few tasks to test the save functionality
3. ✅ Try uploading a new Excel file to test the upload feature
4. ✅ Keep your Google Sheets as backup for a few weeks
5. ✅ Delete the CSV files (they may contain sensitive data)

## Need Help?

If you encounter issues:

1. Check the error messages in the script output
2. Verify your CSV files have the correct columns
3. Check the Supabase dashboard → Table Editor to see what data was imported
4. Look at the Supabase logs for detailed error messages

---

**Ready to migrate?** Follow the steps above and you'll have all your data in Supabase in minutes!
