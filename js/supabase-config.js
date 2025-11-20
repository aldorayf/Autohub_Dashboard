// Supabase Configuration
// Replace these with your actual Supabase project credentials
const SUPABASE_URL = 'YOUR_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_ANON_KEY';

// Initialize Supabase client
// Note: Make sure to include Supabase JS library before this script:
// <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
const { createClient } = supabase;
const supabaseClient = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

// Check if user is authenticated
async function checkAuth() {
    const { data: { user }, error } = await supabaseClient.auth.getUser();
    if (error || !user) {
        window.location.href = 'login.html';
        return null;
    }
    return user;
}

// Check if user is admin
async function checkAdmin() {
    const user = await checkAuth();
    if (!user) return false;

    const { data, error } = await supabaseClient
        .from('users')
        .select('role')
        .eq('email', user.email)
        .single();

    return data && data.role === 'admin';
}

// Sign out
async function signOut() {
    const { error } = await supabaseClient.auth.signOut();
    if (!error) {
        window.location.href = 'login.html';
    } else {
        console.error('Sign out error:', error);
    }
}

// Get current user profile
async function getCurrentUserProfile() {
    const user = await checkAuth();
    if (!user) return null;

    const { data, error } = await supabaseClient
        .from('users')
        .select('*')
        .eq('email', user.email)
        .single();

    if (error) {
        console.error('Error fetching user profile:', error);
        return null;
    }

    return data;
}
