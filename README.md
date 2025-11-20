# AutoHub Dashboard - Supabase Migration

A modern vessel and customer management dashboard with authentication, user management, and Excel import capabilities.

## 🎯 Features

- ✅ **Supabase Backend** - Replaced Google Sheets with robust PostgreSQL database
- ✅ **User Authentication** - Secure login with email/password
- ✅ **Admin User Management** - Add/remove user accounts (admin only)
- ✅ **Excel Import** - Upload vessel manifest data from Excel files
- ✅ **Real-time Dashboard** - Track 22 tasks per customer across vessels
- ✅ **Responsive Design** - Works on desktop, tablet, and mobile
- ✅ **Audit Logging** - Track all changes with timestamps

## 📋 Setup Instructions

### Step 1: Create Supabase Project

1. Go to [https://supabase.com](https://supabase.com) and create a free account
2. Create a new project
3. Copy your project URL and anon/public API key

### Step 2: Set Up Database

1. In your Supabase project, go to the SQL Editor
2. Copy the entire contents of `supabase-schema.sql`
3. Paste and run the SQL script in the Supabase SQL Editor
4. This will create all necessary tables, indexes, RLS policies, and triggers

### Step 3: Configure the Application

1. Open `js/supabase-config.js`
2. Replace the placeholder values with your actual Supabase credentials:

```javascript
const SUPABASE_URL = 'https://your-project.supabase.co';
const SUPABASE_ANON_KEY = 'your-anon-key-here';
```

### Step 4: Create Admin User

1. Open the login page (`login.html`) in your browser
2. Since there are no users yet, you need to create the admin user manually:
   - Go to your Supabase project dashboard
   - Navigate to Authentication → Users
   - Click "Invite User" or "Add User"
   - Enter email: `aldof@tgal.us`
   - Set a password
3. Grant admin role:
   - Go to SQL Editor in Supabase
   - Run this SQL:

```sql
INSERT INTO users (email, role)
VALUES ('aldof@tgal.us', 'admin')
ON CONFLICT (email)
DO UPDATE SET role = 'admin';
```

### Step 5: Access the Dashboard

1. Open `login.html` in your browser
2. Sign in with `aldof@tgal.us` and your password
3. You'll be redirected to the main dashboard

## 📁 Project Structure

```
Autohub_Dashboard/
├── index.html                      # Main dashboard (to be migrated)
├── login.html                      # Login page
├── admin-users.html               # User management (admin only)
├── upload-vessel.html             # Excel import page
├── supabase-schema.sql            # Database schema
├── js/
│   ├── supabase-config.js        # Supabase configuration & auth helpers
│   └── supabase-data.js          # Data access layer
├── css/                           # (Future: extracted CSS files)
└── README.md                      # This file
```

## 🔐 User Roles

### Admin
- Full access to all features
- Can manage user accounts
- Can upload vessel data
- Can view/edit all shipments and tasks

### User
- Can view dashboard
- Can update tasks and customer information
- Cannot manage users
- Cannot delete vessels

## 📊 Database Schema

### Tables

1. **users** - User accounts and roles
2. **vessels** - Vessel and voyage information
3. **customers** - Customer/shipment details
4. **tasks** - 22 task statuses per customer
5. **audit_log** - Change tracking for compliance

### Views

- **vessel_summary** - Vessels with customer counts and ETA ranges
- **customer_summary** - Complete customer info with tasks (used by dashboard)

## 📤 Excel Import Format

The Excel file should contain the following columns:

| Column | Description | Required |
|--------|-------------|----------|
| Vessel | Vessel name | Yes |
| Voy. or Voyage | Voyage number | Yes |
| Customer | Customer name | Yes |
| House No. or BL No. | Bill of Lading number | Yes |
| Port or POD | Port of destination | Yes |
| ETA | Estimated Time of Arrival (DD/MM/YYYY) | Yes |

**Note:** The ETS (Estimated Time of Sailing) is NOT in the Excel file and must be entered manually during upload.

## 🎨 Key Features

### Dashboard
- Filter by vessel, port, status, and date ranges
- Sort by ETS, ETA, or vessel name
- Collapsible vessel sections
- Real-time task updates
- Editable customer fields
- Urgent task highlighting

### Tasks (22 Total)
1. Review Customer Docs and Provide Trucking Quote
2. File Single Entry Bond
3. ISF Transmit
4. ISF Match
5. Entry Created / Validate 7501
6. Inland Confirmation
7. Update Betrix with Transport Status
8. AWIS Invoice to AutoHub
9. NOA Received
10. NOA to Accounting
11. Bitrix Updated with ETA
12. Arrival Status Email
13. Check Payment Received in Betrix
14. Submit Entry to customs
15. CBP Release
16. Request SSL/Terminal Release/LFD
17. SSL/Terminal Release Confirmed
18. Release Notification to Customer or Transcar
19. Upload Release Docs to Bitrix
20. Mark Customs Clear in Bitrix
21. REG Docs to CBP for Stamp
22. REG Docs Uploaded to Bitrix

## 🔄 Migration from Google Sheets

If you have existing data in Google Sheets:

1. Export each sheet to CSV/Excel
2. Use the Excel upload feature to import vessel data
3. Customer details and task status can be manually entered or imported via SQL

## 🚀 Deployment

### Option 1: Static Hosting (Vercel, Netlify, GitHub Pages)
1. Push code to GitHub repository
2. Connect repository to hosting provider
3. Deploy (all files are static HTML/CSS/JS)

### Option 2: Traditional Web Server
1. Upload all files to your web server
2. Ensure HTTPS is enabled (required for secure authentication)
3. Configure domain and SSL certificate

## 🔒 Security

- ✅ Row Level Security (RLS) enabled on all tables
- ✅ Authenticated users only
- ✅ Admin-only routes for user management
- ✅ Audit logging for compliance
- ✅ Password-based authentication with Supabase Auth

## 📱 Responsive Design

The dashboard is optimized for:
- Desktop (1920px+)
- Laptop (1200px - 1920px)
- Tablet (768px - 1200px)
- Mobile (320px - 768px)

## 🆘 Troubleshooting

### Can't log in
- Verify Supabase credentials in `js/supabase-config.js`
- Check that user exists in Supabase Authentication
- Ensure user has a role in the `users` table

### Data not loading
- Check browser console for errors
- Verify Supabase connection
- Ensure RLS policies are correctly applied

### Upload fails
- Check Excel file format matches expected columns
- Verify file size is under 10MB
- Check browser console for parsing errors

## 📞 Support

For issues or questions:
- Check the browser console for error messages
- Review Supabase logs in the dashboard
- Verify database schema matches `supabase-schema.sql`

## 📝 License

Proprietary - AutoHub Internal Use Only

---

**Last Updated:** November 2025
**Version:** 2.0.0 (Supabase Migration)
