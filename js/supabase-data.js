// Supabase Data Access Layer
// This file replaces the Google Sheets integration with Supabase

// =====================================================
// VESSELS
// =====================================================

// Get all vessels with customers and tasks
async function getAllVessels() {
    try {
        const { data, error } = await supabaseClient
            .from('customer_summary')
            .select('*');

        if (error) throw error;

        // Transform data to match existing dashboard format
        return transformSupabaseData(data);

    } catch (error) {
        console.error('Error loading vessels:', error);
        throw error;
    }
}

// Get single vessel by ID
async function getVessel(vesselId) {
    try {
        const { data, error } = await supabaseClient
            .from('vessels')
            .select(`
                *,
                customers (
                    *,
                    tasks (*)
                )
            `)
            .eq('id', vesselId)
            .single();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error loading vessel:', error);
        throw error;
    }
}

// Create new vessel
async function createVessel(vesselData) {
    try {
        const { data, error } = await supabaseClient
            .from('vessels')
            .insert([{
                vessel_name: vesselData.vessel_name,
                voyage_number: vesselData.voyage_number,
                ets: vesselData.ets
            }])
            .select()
            .single();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error creating vessel:', error);
        throw error;
    }
}

// =====================================================
// CUSTOMERS
// =====================================================

// Get customer by ID
async function getCustomer(customerId) {
    try {
        const { data, error } = await supabaseClient
            .from('customers')
            .select(`
                *,
                vessels (*),
                tasks (*)
            `)
            .eq('id', customerId)
            .single();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error loading customer:', error);
        throw error;
    }
}

// Update customer field
async function updateCustomer(blNumber, field, value) {
    try {
        // Map field names from dashboard to database
        const fieldMap = {
            'bnumber': 'b_number',
            'BNumber': 'b_number',
            'Email': 'email',
            'email': 'email',
            'Notes': 'notes',
            'notes': 'notes',
            'Inland': 'inland',
            'inland': 'inland',
            'eta': 'eta'
        };

        const dbField = fieldMap[field] || field;

        const { data, error } = await supabaseClient
            .from('customers')
            .update({ [dbField]: value })
            .eq('bl_number', blNumber)
            .select();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error updating customer:', error);
        throw error;
    }
}

// Update customer ETA
async function updateCustomerETA(customerName, blNumber, newETA) {
    try {
        const { data, error } = await supabaseClient
            .from('customers')
            .update({ eta: newETA })
            .eq('bl_number', blNumber)
            .select();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error updating ETA:', error);
        throw error;
    }
}

// =====================================================
// TASKS
// =====================================================

// Update task status
async function updateTask(blNumber, taskId, newStatus) {
    try {
        // Get customer ID from BL number
        const { data: customerData, error: customerError } = await supabaseClient
            .from('customers')
            .select('id')
            .eq('bl_number', blNumber)
            .single();

        if (customerError) throw customerError;

        // Map task ID to field name
        const taskFieldName = getTaskFieldName(taskId);
        const dateFieldName = `${taskFieldName}_date`;

        const updateData = {
            [taskFieldName]: newStatus
        };

        // Set date if status is in-progress or completed (or custom states)
        if (newStatus === 'in-progress' || newStatus === 'completed' ||
            newStatus === 'RECEIVED' || newStatus === 'PAID') {
            updateData[dateFieldName] = new Date().toISOString().split('T')[0];
        }

        const { data, error } = await supabaseClient
            .from('tasks')
            .update(updateData)
            .eq('customer_id', customerData.id)
            .select();

        if (error) throw error;
        return data;

    } catch (error) {
        console.error('Error updating task:', error);
        throw error;
    }
}

// Get task field name from task ID
function getTaskFieldName(taskId) {
    const fieldNames = {
        1: 'review_customer_docs',
        2: 'file_single_entry_bond',
        3: 'isf_transmit',
        4: 'isf_match',
        5: 'entry_created',
        6: 'inland_confirm',
        7: 'update_betrix_transport',
        8: 'awis_invoice',
        9: 'noa_received',
        10: 'noa_accounting',
        11: 'bitrix_eta',
        12: 'arrival_email',
        13: 'payment_check',
        14: 'entry_transmitted',
        15: 'cbp_release',
        16: 'ssl_request',
        17: 'ssl_confirmed',
        18: 'release_notification',
        19: 'upload_release_docs',
        20: 'customs_clear_bitrix',
        21: 'reg_docs_cbp',
        22: 'reg_docs_bitrix'
    };
    return fieldNames[taskId] || 'unknown';
}

// =====================================================
// DATA TRANSFORMATION
// =====================================================

// Transform Supabase data to match existing dashboard format
function transformSupabaseData(supabaseData) {
    // Group by vessel
    const vesselsMap = new Map();

    supabaseData.forEach(row => {
        const vesselKey = `${row.vessel_name}_${row.voyage_number}`;

        if (!vesselsMap.has(vesselKey)) {
            vesselsMap.set(vesselKey, {
                vessel: row.vessel_name,
                voyage: row.voyage_number,
                ets: row.ets,
                customers: []
            });
        }

        const vessel = vesselsMap.get(vesselKey);

        // Build customer object
        const customer = {
            name: row.customer_name,
            bnumber: row.b_number || '',
            bol: row.bl_number,
            email: row.email || '',
            notes: row.notes || '',
            pod: row.pod,
            eta: row.eta,
            inland: row.inland || 'UNKNOWN',
            tasks: {},
            taskDates: {}
        };

        // Map all 22 tasks
        for (let i = 1; i <= 22; i++) {
            const taskFieldName = getTaskFieldName(i);
            customer.tasks[i] = row[taskFieldName] || getDefaultTaskStatus(i);

            const dateField = `${taskFieldName}_date`;
            if (row[dateField]) {
                customer.taskDates[i] = row[dateField];
            }
        }

        vessel.customers.push(customer);
    });

    return Array.from(vesselsMap.values());
}

// Get default task status
function getDefaultTaskStatus(taskId) {
    if (taskId === 9) return 'NOT RECEIVED';  // NOA Received
    if (taskId === 13) return 'UNPAID';       // Check Payment Received
    return 'incomplete';
}

// =====================================================
// EXPORT/IMPORT
// =====================================================

// Export all data to JSON
async function exportAllData() {
    try {
        const vessels = await getAllVessels();
        return {
            exportDate: new Date().toISOString(),
            vessels: vessels
        };

    } catch (error) {
        console.error('Error exporting data:', error);
        throw error;
    }
}

// Get dashboard statistics
async function getDashboardStats() {
    try {
        // Get total vessels
        const { count: vesselCount, error: vesselError } = await supabaseClient
            .from('vessels')
            .select('*', { count: 'exact', head: true });

        if (vesselError) throw vesselError;

        // Get total customers
        const { count: customerCount, error: customerError } = await supabaseClient
            .from('customers')
            .select('*', { count: 'exact', head: true });

        if (customerError) throw customerError;

        // Get customers arriving this week
        const today = new Date();
        const startOfWeek = new Date(today.setDate(today.getDate() - today.getDay()));
        const endOfWeek = new Date(today.setDate(today.getDate() - today.getDay() + 6));

        const { count: arrivingCount, error: arrivingError } = await supabaseClient
            .from('customers')
            .select('*', { count: 'exact', head: true })
            .gte('eta', startOfWeek.toISOString().split('T')[0])
            .lte('eta', endOfWeek.toISOString().split('T')[0]);

        if (arrivingError) throw arrivingError;

        return {
            totalVessels: vesselCount || 0,
            totalCustomers: customerCount || 0,
            arrivingThisWeek: arrivingCount || 0
        };

    } catch (error) {
        console.error('Error getting stats:', error);
        throw error;
    }
}

// =====================================================
// REAL-TIME SUBSCRIPTIONS
// =====================================================

// Subscribe to vessel changes
function subscribeToVessels(callback) {
    return supabaseClient
        .channel('vessels-channel')
        .on('postgres_changes', {
            event: '*',
            schema: 'public',
            table: 'vessels'
        }, callback)
        .subscribe();
}

// Subscribe to customer changes
function subscribeToCustomers(callback) {
    return supabaseClient
        .channel('customers-channel')
        .on('postgres_changes', {
            event: '*',
            schema: 'public',
            table: 'customers'
        }, callback)
        .subscribe();
}

// Subscribe to task changes
function subscribeToTasks(callback) {
    return supabaseClient
        .channel('tasks-channel')
        .on('postgres_changes', {
            event: '*',
            schema: 'public',
            table: 'tasks'
        }, callback)
        .subscribe();
}

// Unsubscribe from channel
function unsubscribe(subscription) {
    if (subscription) {
        supabaseClient.removeChannel(subscription);
    }
}
