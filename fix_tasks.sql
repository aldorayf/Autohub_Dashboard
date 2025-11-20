-- Fix Task Statuses
-- Updates tasks with correct statuses from CSV

BEGIN;

-- Update tasks for BL: HOEGAS79KS510010
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGAS79KS510010'
);

-- Update tasks for BL: HOEG0J92KS510010
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEG0J92KS510010'
);

-- Update tasks for BL: HOEG0J92KS510004
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEG0J92KS510004'
);

-- Update tasks for BL: MOLU18007375827
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007375827'
);

-- Update tasks for BL: MOLU18007375832
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007375832'
);

-- Update tasks for BL: MOLU18007375811
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007375811'
);

-- Update tasks for BL: MOLU18007432763
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007432763'
);

-- Update tasks for BL: MOLU18007432953
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007432953'
);

-- Update tasks for BL: MOLU18007432969
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007432969'
);

-- Update tasks for BL: MOLU18007375220
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007375220'
);

-- Update tasks for BL: MOLU18007375262
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007375262'
);

-- Update tasks for BL: MOLU18007438463
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007438463'
);

-- Update tasks for BL: MOLU18007436840
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007436840'
);

-- Update tasks for BL: MOLU18007438571
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007438571'
);

-- Update tasks for BL: MOLU18007433862
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007433862'
);

-- Update tasks for BL: MOLU18007392953
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007392953'
);

-- Update tasks for BL: HOEGOJ92KB510012
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGOJ92KB510012'
);

-- Update tasks for BL: MOLU18007433610
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007433610'
);

-- Update tasks for BL: MOLU18007427936
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007427936'
);

-- Update tasks for BL: MOLU18007502855
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007502855'
);

-- Update tasks for BL: MOLU18007502860
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007502860'
);

-- Update tasks for BL: MOLU18007502876
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007502876'
);

-- Update tasks for BL: JP2479210
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2479210'
);

-- Update tasks for BL: JP2479129
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2479129'
);

-- Update tasks for BL: JP2479126
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2479126'
);

-- Update tasks for BL: HOEGE468KB510007
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGE468KB510007'
);

-- Update tasks for BL: HOEGNH57KS510009
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGNH57KS510009'
);

-- Update tasks for BL: MOLU18007392932
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007392932'
);

-- Update tasks for BL: JP2486506
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2486506'
);

-- Update tasks for BL: JP2488545
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2488545'
);

-- Update tasks for BL: MOLU18007517388
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007517388'
);

-- Update tasks for BL: MOLU18007567178
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007567178'
);

-- Update tasks for BL: MOLU18007566464
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566464'
);

-- Update tasks for BL: MOLU18007567455
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007567455'
);

-- Update tasks for BL: MOLU18007566382
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566382'
);

-- Update tasks for BL: MOLU18007566470
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566470'
);

-- Update tasks for BL: MOLU18007566490
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566490'
);

-- Update tasks for BL: MOLU18007566398
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566398'
);

-- Update tasks for BL: MOLU18007566438
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007566438'
);

-- Update tasks for BL: MOLU18007565998
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007565998'
);

-- Update tasks for BL: MOLU18007569226
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007569226'
);

-- Update tasks for BL: HOEGCJ92KS510028
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGCJ92KS510028'
);

-- Update tasks for BL: HOEGCJ92KS510032
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGCJ92KS510032'
);

-- Update tasks for BL: MOLU18007577670
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007577670'
);

-- Update tasks for BL: MOLU18007577371
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007577371'
);

-- Update tasks for BL: MOLU18007559850
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007559850'
);

-- Update tasks for BL: MOLU18007577664
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007577664'
);

-- Update tasks for BL: MOLU18007577685
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007577685'
);

-- Update tasks for BL: MOLU18007559974
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007559974'
);

-- Update tasks for BL: MOLU18007592329
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007592329'
);

-- Update tasks for BL: MOLU18007609083
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007609083'
);

-- Update tasks for BL: MOLU18007612317
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007612317'
);

-- Update tasks for BL: MOLU18007610551
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007610551'
);

-- Update tasks for BL: MOLU18007612322
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007612322'
);

-- Update tasks for BL: MOLU18007612343
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007612343'
);

-- Update tasks for BL: MOLU18007608981
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007608981'
);

-- Update tasks for BL: NYKS182224348
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182224348'
);

-- Update tasks for BL: NYKS182224605
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182224605'
);

-- Update tasks for BL: JP2493850
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2493850'
);

-- Update tasks for BL: MOLU18007656953
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007656953'
);

-- Update tasks for BL: MOLU18007666885
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007666885'
);

-- Update tasks for BL: MOLU18007657369
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007657369'
);

-- Update tasks for BL: MOLU18007715568
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007715568'
);

-- Update tasks for BL: MOLU18007714345
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007714345'
);

-- Update tasks for BL: MOLU18007717703
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007717703'
);

-- Update tasks for BL: JP2495455
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2495455'
);

-- Update tasks for BL: JP2495559
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2495559'
);

-- Update tasks for BL: JP2496204
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2496204'
);

-- Update tasks for BL: KKLUJPN617886
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'KKLUJPN617886'
);

-- Update tasks for BL: MOLU18007727825
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007727825'
);

-- Update tasks for BL: MOLU18007727810
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007727810'
);

-- Update tasks for BL: MOLU18007714670
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007714670'
);

-- Update tasks for BL: MOLU18007727830
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007727830'
);

-- Update tasks for BL: MOLU18007728122
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007728122'
);

-- Update tasks for BL: MOLU18007765126
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007765126'
);

-- Update tasks for BL: MOLU18007771860
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007771860'
);

-- Update tasks for BL: MOLU18007764705
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007764705'
);

-- Update tasks for BL: MOLU18007780959
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007780959'
);

-- Update tasks for BL: MOLU18007780943
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007780943'
);

-- Update tasks for BL: MOLU18007752392
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007752392'
);

-- Update tasks for BL: MOLU18007784698
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784698'
);

-- Update tasks for BL: MOLU18007784701
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784701'
);

-- Update tasks for BL: MOLU18007784717
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784717'
);

-- Update tasks for BL: MOLU18007784168
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784168'
);

-- Update tasks for BL: MOLU18007784152
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784152'
);

-- Update tasks for BL: MOLU18007784147
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784147'
);

-- Update tasks for BL: MOLU18007784722
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007784722'
);

-- Update tasks for BL: MOLU18007785708
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007785708'
);

-- Update tasks for BL: MOLU18007785713
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007785713'
);

-- Update tasks for BL: MOLU18007783726
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007783726'
);

-- Update tasks for BL: MOLU18007783731
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007783731'
);

-- Update tasks for BL: MOLU18007752411
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007752411'
);

-- Update tasks for BL: MOLU18007780970
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007780970'
);

-- Update tasks for BL: MOLU18007805532
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007805532'
);

-- Update tasks for BL: MOLU18007803925
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007803925'
);

-- Update tasks for BL: MOLU18007804074
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804074'
);

-- Update tasks for BL: MOLU18007803972
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007803972'
);

-- Update tasks for BL: MOLU18007804080
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804080'
);

-- Update tasks for BL: MOLU18007803993
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007803993'
);

-- Update tasks for BL: MOLU18007804006
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804006'
);

-- Update tasks for BL: MOLU18007804011
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804011'
);

-- Update tasks for BL: MOLU18007804027
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804027'
);

-- Update tasks for BL: MOLU18007804032
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804032'
);

-- Update tasks for BL: MOLU18007804048
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804048'
);

-- Update tasks for BL: MOLU18007804053
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804053'
);

-- Update tasks for BL: MOLU18007804069
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804069'
);

-- Update tasks for BL: MOLU18007805548
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007805548'
);

-- Update tasks for BL: MOLU18007803988
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007803988'
);

-- Update tasks for BL: MOLU18007805553
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007805553'
);

-- Update tasks for BL: MOLU18007804789
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804789'
);

-- Update tasks for BL: MOLU18007805569
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007805569'
);

-- Update tasks for BL: MOLU18007804768
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007804768'
);

-- Update tasks for BL: MOLU18007838705
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007838705'
);

-- Update tasks for BL: MOLU18007836317
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007836317'
);

-- Update tasks for BL: MOLU18007838623
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007838623'
);

-- Update tasks for BL: MOLU18007866501
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007866501'
);

-- Update tasks for BL: MOLU18007866498
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007866498'
);

-- Update tasks for BL: KKLUJPN619523
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'KKLUJPN619523'
);

-- Update tasks for BL: MOLU18007898089
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898089'
);

-- Update tasks for BL: MOLU18007853335
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007853335'
);

-- Update tasks for BL: MOLU18007898073
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898073'
);

-- Update tasks for BL: MOLU18007898983
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898983'
);

-- Update tasks for BL: MOLU18007898999
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898999'
);

-- Update tasks for BL: MOLU18007898941
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898941'
);

-- Update tasks for BL: MOLU18007898920
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007898920'
);

-- Update tasks for BL: MOLU18007905526
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007905526'
);

-- Update tasks for BL: JP2502952
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2502952'
);

-- Update tasks for BL: MOLU18007920393
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007920393'
);

-- Update tasks for BL: MOLU18007934669
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007934669'
);

-- Update tasks for BL: MOLU18007934674
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007934674'
);

-- Update tasks for BL: MOLU18007936770
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007936770'
);

-- Update tasks for BL: MOLU18007935644
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007935644'
);

-- Update tasks for BL: HOEG7Q49KBBA0009
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEG7Q49KBBA0009'
);

-- Update tasks for BL: HOEG7Q49KBJX0002
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEG7Q49KBJX0002'
);

-- Update tasks for BL: HOEG7Q49KS510009
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEG7Q49KS510009'
);

-- Update tasks for BL: JP2507073
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2507073'
);

-- Update tasks for BL: MOLU18008013231
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008013231'
);

-- Update tasks for BL: MOLU18008055406
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055406'
);

-- Update tasks for BL: MOLU18008049790
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008049790'
);

-- Update tasks for BL: MOLU18008055411
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'in-progress',
  ssl_request = 'in-progress',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055411'
);

-- Update tasks for BL: MOLU18008055432
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'in-progress',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055432'
);

-- Update tasks for BL: MOLU18008055427
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'completed',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055427'
);

-- Update tasks for BL: MOLU18007997029
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007997029'
);

-- Update tasks for BL: MOLU18007997040
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'PAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007997040'
);

-- Update tasks for BL: MOLU18008055495
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055495'
);

-- Update tasks for BL: MOLU18008055474
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055474'
);

-- Update tasks for BL: MOLU18008055480
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'PAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008055480'
);

-- Update tasks for BL: HOEGY120KBBA0004
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGY120KBBA0004'
);

-- Update tasks for BL: HOEGY120KSBA0001
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'HOEGY120KSBA0001'
);

-- Update tasks for BL: MOLU18008089561
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089561'
);

-- Update tasks for BL: MOLU18008089556
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089556'
);

-- Update tasks for BL: MOLU18008089582
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089582'
);

-- Update tasks for BL: MOLU18008090080
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008090080'
);

-- Update tasks for BL: MOLU18008089535
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'in-progress',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089535'
);

-- Update tasks for BL: MOLU18008089577
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089577'
);

-- Update tasks for BL: MOLU18008089540
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008089540'
);

-- Update tasks for BL: NYKS182242692
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182242692'
);

-- Update tasks for BL: MOLU18007996697
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18007996697'
);

-- Update tasks for BL: MOLU18008094629
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008094629'
);

-- Update tasks for BL: MOLU18008095733
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'in-progress',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008095733'
);

-- Update tasks for BL: MOLU18008095754
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008095754'
);

-- Update tasks for BL: MOLU18008095749
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008095749'
);

-- Update tasks for BL: JP2511355
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2511355'
);

-- Update tasks for BL: NYKS182243427
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182243427'
);

-- Update tasks for BL: JP2512204
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'in-progress',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2512204'
);

-- Update tasks for BL: MOLU18008090095
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008090095'
);

-- Update tasks for BL: MOLU18008143657
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008143657'
);

-- Update tasks for BL: MOLU18008146419
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146419'
);

-- Update tasks for BL: MOLU18008146384
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146384'
);

-- Update tasks for BL: MOLU18008146403
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146403'
);

-- Update tasks for BL: MOLU18008146390
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146390'
);

-- Update tasks for BL: MOLU18008149418
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008149418'
);

-- Update tasks for BL: MOLU18008146379
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'completed',
  reg_docs_bitrix = 'completed'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146379'
);

-- Update tasks for BL: MOLU18008142964
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008142964'
);

-- Update tasks for BL: MOLU18008142959
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008142959'
);

-- Update tasks for BL: MOLU18008149911
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'PAID',
  entry_transmitted = 'completed',
  cbp_release = 'completed',
  ssl_request = 'completed',
  ssl_confirmed = 'completed',
  release_notification = 'completed',
  upload_release_docs = 'completed',
  customs_clear_bitrix = 'completed',
  reg_docs_cbp = 'in-progress',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008149911'
);

-- Update tasks for BL: MOLU18008167875
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008167875'
);

-- Update tasks for BL: MOLU18008167880
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'in-progress',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008167880'
);

-- Update tasks for BL: JP2513247
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2513247'
);

-- Update tasks for BL: JP2513244
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'JP2513244'
);

-- Update tasks for BL: NYKS182246012
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'completed',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182246012'
);

-- Update tasks for BL: MOLU18008180521
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008180521'
);

-- Update tasks for BL: MOLU18008180537
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'in-progress',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'RECEIVED',
  noa_accounting = 'completed',
  bitrix_eta = 'completed',
  arrival_email = 'completed',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008180537'
);

-- Update tasks for BL: MOLU18008146785
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008146785'
);

-- Update tasks for BL: MOLU18008187660
UPDATE tasks
SET
  review_customer_docs = 'completed',
  file_single_entry_bond = 'completed',
  isf_transmit = 'completed',
  isf_match = 'completed',
  entry_created = 'completed',
  inland_confirm = 'completed',
  update_betrix_transport = 'completed',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008187660'
);

-- Update tasks for BL: MOLU18008214920
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008214920'
);

-- Update tasks for BL: MOLU18008235305
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008235305'
);

-- Update tasks for BL: MOLU18008232190
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008232190'
);

-- Update tasks for BL: MOLU18008232158
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008232158'
);

-- Update tasks for BL: MOLU18008232163
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008232163'
);

-- Update tasks for BL: MOLU18008236220
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008236220'
);

-- Update tasks for BL: MOLU18008235985
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008235985'
);

-- Update tasks for BL: MOLU18008231552
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'MOLU18008231552'
);

-- Update tasks for BL: NYKS182251380
UPDATE tasks
SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'NOT RECEIVED',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'UNPAID',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete'
WHERE customer_id = (
  SELECT id FROM customers WHERE bl_number = 'NYKS182251380'
);

COMMIT;

-- Updated 194 task records
