-- AutoHub Dashboard - Supabase Database Schema
-- Run this script in your Supabase SQL Editor to set up the database

-- =====================================================
-- 1. USERS TABLE (for authentication and user management)
-- =====================================================
CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email TEXT UNIQUE NOT NULL,
    role TEXT NOT NULL DEFAULT 'user' CHECK (role IN ('admin', 'user')),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    last_login TIMESTAMPTZ
);

-- Index for faster user lookups
CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);

-- Enable RLS on users table
ALTER TABLE users ENABLE ROW LEVEL SECURITY;

-- Users can read their own profile
CREATE POLICY "Users can read own profile"
    ON users FOR SELECT
    USING (auth.uid()::text = id::text OR email = auth.jwt()->>'email');

-- Only admins can insert/update/delete users
CREATE POLICY "Admins can manage users"
    ON users FOR ALL
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE email = auth.jwt()->>'email'
            AND role = 'admin'
        )
    );

-- =====================================================
-- 2. VESSELS TABLE (vessel and voyage information)
-- =====================================================
CREATE TABLE IF NOT EXISTS vessels (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    vessel_name TEXT NOT NULL,
    voyage_number TEXT NOT NULL,
    ets DATE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    UNIQUE(vessel_name, voyage_number)
);

-- Index for faster vessel lookups
CREATE INDEX IF NOT EXISTS idx_vessels_name_voyage ON vessels(vessel_name, voyage_number);
CREATE INDEX IF NOT EXISTS idx_vessels_ets ON vessels(ets);

-- Enable RLS
ALTER TABLE vessels ENABLE ROW LEVEL SECURITY;

-- Authenticated users can read vessels
CREATE POLICY "Authenticated users can read vessels"
    ON vessels FOR SELECT
    USING (auth.role() = 'authenticated');

-- Authenticated users can insert/update/delete vessels
CREATE POLICY "Authenticated users can manage vessels"
    ON vessels FOR ALL
    USING (auth.role() = 'authenticated');

-- =====================================================
-- 3. CUSTOMERS TABLE (customer/shipment details)
-- =====================================================
CREATE TABLE IF NOT EXISTS customers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    vessel_id UUID NOT NULL REFERENCES vessels(id) ON DELETE CASCADE,
    customer_name TEXT NOT NULL,
    bl_number TEXT NOT NULL,
    b_number TEXT,
    email TEXT,
    notes TEXT,
    pod TEXT NOT NULL,
    eta DATE NOT NULL,
    inland TEXT DEFAULT 'UNKNOWN' CHECK (inland IN ('Y', 'N', 'UNKNOWN')),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(bl_number, vessel_id)
);

-- Indexes for faster lookups
CREATE INDEX IF NOT EXISTS idx_customers_vessel ON customers(vessel_id);
CREATE INDEX IF NOT EXISTS idx_customers_bl ON customers(bl_number);
CREATE INDEX IF NOT EXISTS idx_customers_eta ON customers(eta);
CREATE INDEX IF NOT EXISTS idx_customers_pod ON customers(pod);

-- Enable RLS
ALTER TABLE customers ENABLE ROW LEVEL SECURITY;

-- Authenticated users can read customers
CREATE POLICY "Authenticated users can read customers"
    ON customers FOR SELECT
    USING (auth.role() = 'authenticated');

-- Authenticated users can manage customers
CREATE POLICY "Authenticated users can manage customers"
    ON customers FOR ALL
    USING (auth.role() = 'authenticated');

-- =====================================================
-- 4. TASKS TABLE (task status tracking)
-- =====================================================
CREATE TABLE IF NOT EXISTS tasks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_id UUID NOT NULL REFERENCES customers(id) ON DELETE CASCADE,

    -- Task 1-22 statuses
    review_customer_docs TEXT DEFAULT 'incomplete',
    review_customer_docs_date DATE,

    file_single_entry_bond TEXT DEFAULT 'incomplete',
    file_single_entry_bond_date DATE,

    isf_transmit TEXT DEFAULT 'incomplete',
    isf_transmit_date DATE,

    isf_match TEXT DEFAULT 'incomplete',
    isf_match_date DATE,

    entry_created TEXT DEFAULT 'incomplete',
    entry_created_date DATE,

    inland_confirm TEXT DEFAULT 'incomplete',
    inland_confirm_date DATE,

    update_betrix_transport TEXT DEFAULT 'incomplete',
    update_betrix_transport_date DATE,

    awis_invoice TEXT DEFAULT 'incomplete',
    awis_invoice_date DATE,

    noa_received TEXT DEFAULT 'NOT RECEIVED',
    noa_received_date DATE,

    noa_accounting TEXT DEFAULT 'incomplete',
    noa_accounting_date DATE,

    bitrix_eta TEXT DEFAULT 'incomplete',
    bitrix_eta_date DATE,

    arrival_email TEXT DEFAULT 'incomplete',
    arrival_email_date DATE,

    payment_check TEXT DEFAULT 'UNPAID',
    payment_check_date DATE,

    entry_transmitted TEXT DEFAULT 'incomplete',
    entry_transmitted_date DATE,

    cbp_release TEXT DEFAULT 'incomplete',
    cbp_release_date DATE,

    ssl_request TEXT DEFAULT 'incomplete',
    ssl_request_date DATE,

    ssl_confirmed TEXT DEFAULT 'incomplete',
    ssl_confirmed_date DATE,

    release_notification TEXT DEFAULT 'incomplete',
    release_notification_date DATE,

    upload_release_docs TEXT DEFAULT 'incomplete',
    upload_release_docs_date DATE,

    customs_clear_bitrix TEXT DEFAULT 'incomplete',
    customs_clear_bitrix_date DATE,

    reg_docs_cbp TEXT DEFAULT 'incomplete',
    reg_docs_cbp_date DATE,

    reg_docs_bitrix TEXT DEFAULT 'incomplete',
    reg_docs_bitrix_date DATE,

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),

    UNIQUE(customer_id)
);

-- Index for faster task lookups
CREATE INDEX IF NOT EXISTS idx_tasks_customer ON tasks(customer_id);

-- Enable RLS
ALTER TABLE tasks ENABLE ROW LEVEL SECURITY;

-- Authenticated users can read tasks
CREATE POLICY "Authenticated users can read tasks"
    ON tasks FOR SELECT
    USING (auth.role() = 'authenticated');

-- Authenticated users can manage tasks
CREATE POLICY "Authenticated users can manage tasks"
    ON tasks FOR ALL
    USING (auth.role() = 'authenticated');

-- =====================================================
-- 5. AUDIT LOG TABLE (track changes for compliance)
-- =====================================================
CREATE TABLE IF NOT EXISTS audit_log (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    user_email TEXT,
    action TEXT NOT NULL,
    table_name TEXT NOT NULL,
    record_id UUID,
    old_data JSONB,
    new_data JSONB,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Index for audit log queries
CREATE INDEX IF NOT EXISTS idx_audit_log_user ON audit_log(user_id);
CREATE INDEX IF NOT EXISTS idx_audit_log_created ON audit_log(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_audit_log_table ON audit_log(table_name);

-- Enable RLS
ALTER TABLE audit_log ENABLE ROW LEVEL SECURITY;

-- Only admins can read audit logs
CREATE POLICY "Admins can read audit logs"
    ON audit_log FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE email = auth.jwt()->>'email'
            AND role = 'admin'
        )
    );

-- =====================================================
-- 6. TRIGGERS FOR UPDATED_AT
-- =====================================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply trigger to all tables with updated_at
CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_vessels_updated_at BEFORE UPDATE ON vessels
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_customers_updated_at BEFORE UPDATE ON customers
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_tasks_updated_at BEFORE UPDATE ON tasks
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- =====================================================
-- 7. AUDIT LOG TRIGGERS
-- =====================================================

-- Function to log changes
CREATE OR REPLACE FUNCTION log_audit_changes()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO audit_log (user_email, action, table_name, record_id, new_data)
        VALUES (
            auth.jwt()->>'email',
            'INSERT',
            TG_TABLE_NAME,
            NEW.id,
            to_jsonb(NEW)
        );
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_log (user_email, action, table_name, record_id, old_data, new_data)
        VALUES (
            auth.jwt()->>'email',
            'UPDATE',
            TG_TABLE_NAME,
            NEW.id,
            to_jsonb(OLD),
            to_jsonb(NEW)
        );
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO audit_log (user_email, action, table_name, record_id, old_data)
        VALUES (
            auth.jwt()->>'email',
            'DELETE',
            TG_TABLE_NAME,
            OLD.id,
            to_jsonb(OLD)
        );
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Apply audit triggers to important tables
CREATE TRIGGER audit_vessels AFTER INSERT OR UPDATE OR DELETE ON vessels
    FOR EACH ROW EXECUTE FUNCTION log_audit_changes();

CREATE TRIGGER audit_customers AFTER INSERT OR UPDATE OR DELETE ON customers
    FOR EACH ROW EXECUTE FUNCTION log_audit_changes();

CREATE TRIGGER audit_tasks AFTER INSERT OR UPDATE OR DELETE ON tasks
    FOR EACH ROW EXECUTE FUNCTION log_audit_changes();

-- =====================================================
-- 8. INSERT ADMIN USER
-- =====================================================
-- Note: After creating this schema, you'll need to:
-- 1. Sign up aldof@tgal.us through Supabase Auth
-- 2. Then run this to make them admin:

-- INSERT INTO users (email, role)
-- VALUES ('aldof@tgal.us', 'admin')
-- ON CONFLICT (email)
-- DO UPDATE SET role = 'admin';

-- =====================================================
-- 9. HELPFUL VIEWS
-- =====================================================

-- View to get complete vessel information with customer counts
CREATE OR REPLACE VIEW vessel_summary AS
SELECT
    v.id,
    v.vessel_name,
    v.voyage_number,
    v.ets,
    COUNT(c.id) as customer_count,
    MIN(c.eta) as earliest_eta,
    MAX(c.eta) as latest_eta,
    v.created_at,
    v.updated_at
FROM vessels v
LEFT JOIN customers c ON v.id = c.vessel_id
GROUP BY v.id, v.vessel_name, v.voyage_number, v.ets, v.created_at, v.updated_at;

-- View to get complete customer information with task summary
CREATE OR REPLACE VIEW customer_summary AS
SELECT
    c.id,
    c.vessel_id,
    c.customer_name,
    c.bl_number,
    c.b_number,
    c.email,
    c.notes,
    c.pod,
    c.eta,
    c.inland,
    c.created_at,
    c.updated_at,
    v.vessel_name,
    v.voyage_number,
    v.ets,
    t.review_customer_docs,
    t.review_customer_docs_date,
    t.file_single_entry_bond,
    t.file_single_entry_bond_date,
    t.isf_transmit,
    t.isf_transmit_date,
    t.isf_match,
    t.isf_match_date,
    t.entry_created,
    t.entry_created_date,
    t.inland_confirm,
    t.inland_confirm_date,
    t.update_betrix_transport,
    t.update_betrix_transport_date,
    t.awis_invoice,
    t.awis_invoice_date,
    t.noa_received,
    t.noa_received_date,
    t.noa_accounting,
    t.noa_accounting_date,
    t.bitrix_eta,
    t.bitrix_eta_date,
    t.arrival_email,
    t.arrival_email_date,
    t.payment_check,
    t.payment_check_date,
    t.entry_transmitted,
    t.entry_transmitted_date,
    t.cbp_release,
    t.cbp_release_date,
    t.ssl_request,
    t.ssl_request_date,
    t.ssl_confirmed,
    t.ssl_confirmed_date,
    t.release_notification,
    t.release_notification_date,
    t.upload_release_docs,
    t.upload_release_docs_date,
    t.customs_clear_bitrix,
    t.customs_clear_bitrix_date,
    t.reg_docs_cbp,
    t.reg_docs_cbp_date,
    t.reg_docs_bitrix,
    t.reg_docs_bitrix_date
FROM customers c
JOIN vessels v ON c.vessel_id = v.id
LEFT JOIN tasks t ON c.id = t.customer_id;

-- =====================================================
-- SCHEMA CREATION COMPLETE!
-- =====================================================
-- Next steps:
-- 1. Create a Supabase project at https://supabase.com
-- 2. Run this SQL in the Supabase SQL Editor
-- 3. Copy your project URL and anon key to js/supabase-config.js
-- 4. Sign up the admin user (aldof@tgal.us) through the app
-- 5. Run the admin INSERT statement above to grant admin role
