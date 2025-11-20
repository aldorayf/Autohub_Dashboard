-- AutoHub Dashboard Migration SQL
-- Generated from Google Sheets CSV files
-- Run this in Supabase SQL Editor

-- Start transaction
BEGIN;

-- Vessel 1: HOEGH ASIA (Voyage 179)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH ASIA', '179', '2025-05-01')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JAMES HART
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH ASIA' AND voyage_number = '179'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAMES HART', 'HOEGAS79KS510010', NULL, NULL, NULL, 'FREEPORT', '2025-06-07', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 2: HOEGH ST.PETERSBURG (Voyage 92)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH ST.PETERSBURG', '92', '2025-04-26')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: NOAH LEE STARR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH ST.PETERSBURG' AND voyage_number = '92'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'NOAH LEE STARR', 'HOEG0J92KS510010', '2111', NULL, 'TEST123kjdkfjdk', 'FREEPORT', '2025-06-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: RAMIRO CASTRO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH ST.PETERSBURG' AND voyage_number = '92'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RAMIRO CASTRO', 'HOEG0J92KS510004', NULL, NULL, NULL, 'FREEPORT', '2025-06-01', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAMES HART
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH ST.PETERSBURG' AND voyage_number = '92'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAMES HART', 'HOEGOJ92KB510012', NULL, NULL, NULL, 'FREEPORT', '2025-06-01', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 3: SWALLOW ACE (Voyage 0149A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('SWALLOW ACE', '0149A', '2025-05-12')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: ALVARO MONARREZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SWALLOW ACE' AND voyage_number = '0149A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ALVARO MONARREZ', 'MOLU18007375827', NULL, NULL, NULL, 'LOS ANGELES', '2025-06-01', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: AUSTIN STOKES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SWALLOW ACE' AND voyage_number = '0149A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'AUSTIN STOKES', 'MOLU18007375832', NULL, NULL, NULL, 'LOS ANGELES', '2025-06-01', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: RICHARD EIZENGA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SWALLOW ACE' AND voyage_number = '0149A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RICHARD EIZENGA', 'MOLU18007375811', NULL, NULL, NULL, 'LOS ANGELES', '2025-06-01', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 4: ORCA ACE (Voyage 0056A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('ORCA ACE', '0056A', '2025-05-23')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: TAKEDA ENTERPRISE INC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ORCA ACE' AND voyage_number = '0056A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'TAKEDA ENTERPRISE INC', 'MOLU18007432763', 'B2501338', NULL, '4 vehicles', 'LOS ANGELES', '2025-06-16', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JOSHUA KEAGEN BROWN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ORCA ACE' AND voyage_number = '0056A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOSHUA KEAGEN BROWN', 'MOLU18007432953', NULL, NULL, NULL, 'TACOMA', '2025-08-18', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: TERRY STROUD
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ORCA ACE' AND voyage_number = '0056A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'TERRY STROUD', 'MOLU18007432969', NULL, NULL, NULL, 'TACOMA', '2025-06-09', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JOHNN KELLY
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ORCA ACE' AND voyage_number = '0056A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOHNN KELLY', 'MOLU18007433610', 'B2501027', NULL, 'JOHN KELLY IS P1 MOTORS', 'LOS ANGELES', '2025-11-05', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: P1 MOTORS LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ORCA ACE' AND voyage_number = '0056A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'P1 MOTORS LLC', 'MOLU18007427936', 'B2501342', NULL, 'B2501342/BL 9850 / Civic
B2501343/BL 7664 / Crown', 'LOS ANGELES', '2025-11-05', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 5: BRAVERY ACE (Voyage 0175A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('BRAVERY ACE', '0175A', '2025-05-12')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DOMINIC ARTHUR DIXON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BRAVERY ACE' AND voyage_number = '0175A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DOMINIC ARTHUR DIXON', 'MOLU18007375220', 'B2500912', NULL, 'Reprinted reg docs to be sent for stamping 6/30', 'BALTIMORE', '2025-06-24', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JANER NIEVES SANTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BRAVERY ACE' AND voyage_number = '0175A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JANER NIEVES SANTA', 'MOLU18007375262', 'B2500914', NULL, 'SSL Confirmed release 6/18', 'JACKSONVILLE', '2025-06-16', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 6: PRIME ACE (Voyage 0091A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PRIME ACE', '0091A', '2025-05-28')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: RAYMOND COLLAZO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RAYMOND COLLAZO', 'MOLU18007438463', 'B2501056', NULL, '7/2 - Pd - Entry transmitted CBP HOLD
CUSTOMER ADDED INLAND 6/30 - INV SENT TO CUSTOMER 6/30', 'BALTIMORE', '2025-06-29', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: ROBERT LOPEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ROBERT LOPEZ', 'MOLU18007436840', 'B2501031', NULL, NULL, 'JACKSONVILLE', '2025-07-28', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JACK BUSHINSKI
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JACK BUSHINSKI', 'MOLU18007438571', 'B2501034', NULL, '6/30 - sent req to Termarra for Reg Docs', 'NEWARK', '2025-06-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MICHAEL F STEIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MICHAEL F STEIN', 'MOLU18007433862', 'B2501033', NULL, '6/30 - sent req to Termarra for Reg Docs', 'NEWARK', '2025-06-27', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: NELSON LOPEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'NELSON LOPEZ', 'MOLU18007392953', 'B2501032', NULL, '6/30 - sent req to Termarra for Reg Docs', 'NEWARK', '2025-06-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PRIME ACE' AND voyage_number = '0091A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007392932', 'B2501066', NULL, NULL, 'JACKSONVILLE', '2025-11-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 7: BRILLIANT ACE (Voyage 0119A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('BRILLIANT ACE', '0119A', '2025-06-12')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: ALDONA FELICIANO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BRILLIANT ACE' AND voyage_number = '0119A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ALDONA FELICIANO', 'MOLU18007502855', 'B2501232', NULL, 'EDDIE FELICIANO WILL BE LISTED ON THE CUSTOMS DOCS', 'BALTIMORE', '2025-07-21', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: DANIEL PELLEGRINO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BRILLIANT ACE' AND voyage_number = '0119A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DANIEL PELLEGRINO', 'MOLU18007502860', 'B2501231', NULL, '7/14 - AG HOLD
EARL STEWART TOYOTA', 'JACKSONVILLE', '2025-07-12', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: LEIGHTON MACKENZIE MARTINEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BRILLIANT ACE' AND voyage_number = '0119A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LEIGHTON MACKENZIE MARTINEZ', 'MOLU18007502876', 'B2501230', NULL, '7/14 - AG HOLD', 'JACKSONVILLE', '2025-07-12', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 8: PARSIFAL (Voyage AW504)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PARSIFAL', 'AW504', '2025-05-05')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: LAWRENCE WHITING
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARSIFAL' AND voyage_number = 'AW504'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LAWRENCE WHITING', 'JP2479210', 'B2500846', NULL, 'LFD - 6/26
TERMINAL SAID TO CHECK BACK TUESDAY.  NO CHARGES DUE ON NOA', 'NEWPORT NEWS', '2025-06-12', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: WILLIAM BERTICE JOHNSON III
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARSIFAL' AND voyage_number = 'AW504'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'WILLIAM BERTICE JOHNSON III', 'JP2479129', 'B2501290', NULL, 'LFD 6/26', 'NEWPORT NEWS', '2025-07-20', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JUAN SANCHEZ BONET
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARSIFAL' AND voyage_number = 'AW504'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JUAN SANCHEZ BONET', 'JP2479126', 'B2500845', NULL, 'TERMINAL SAID TO CHECK BACK TUESDAY. NO CHARGES DUE ON NOA.', 'NEWPORT NEWS', '2025-06-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 9: HOEGH JEDDAH (Voyage 68)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH JEDDAH', '68', '2025-05-05')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: RONNELY HIGHTS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH JEDDAH' AND voyage_number = '68'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RONNELY HIGHTS', 'HOEGE468KB510007', 'B2500957', NULL, 'terminal didnt provide LFD - follow up email sent 6/17', 'FREEPORT', '2025-06-14', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 10: HOEGH TARGET (Voyage 57)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH TARGET', '57', '2025-05-23')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: KHOA VO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TARGET' AND voyage_number = '57'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KHOA VO', 'HOEGNH57KS510009', 'B2501013', 'frogbarf2000@gmail.com', 'added inland 6/27 - EMAILED AHNZ TO CONFIRM PMT HAS BEEN RCVD FOR INLAND
7/1 - emailed customer for status of payment', 'FREEPORT', '2025-06-29', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 11: TONSBERG (Voyage AF506)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TONSBERG', 'AF506', '2025-06-11')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: RICH SOLLARS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TONSBERG' AND voyage_number = 'AF506'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RICH SOLLARS', 'JP2486506', 'B2501229', 'sollars123@yahoo.com', '7/13 - emailed WWL for release status
7/10 - customer updated email address on file to sollars123@yahoo.com previously @outlook.com
7/8-emailed WWL for NOA /sailed on earlier vessel - ARC RESOLVE BR513 ETA 07/12
tranships via panama on Morning Celesta BR517 ETD 7/3', 'GALVESTON', '2025-07-13', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 12: TALISMAN (Voyage AF507)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TALISMAN', 'AF507', '2025-06-19')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: WILLIAM BERTICE JOHNSON III
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TALISMAN' AND voyage_number = 'AF507'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'WILLIAM BERTICE JOHNSON III', 'JP2488545', 'B2501290', 'will11.wj5@gmail.com', NULL, 'NEWPORT NEWS', '2025-07-23', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 13: PROGRESS ACE (Voyage 0171A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PROGRESS ACE', '0171A', '2025-06-23')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DYLAN LOWMAN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DYLAN LOWMAN', 'MOLU18007517388', 'B2501311', 'lowmandylan@yahoo.com', NULL, 'BALTIMORE', '2025-08-04', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MARCELO MOLINA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MARCELO MOLINA', 'MOLU18007567178', 'B2501308', 'mmolina5699@gmail.com', NULL, 'BALTIMORE', '2025-08-04', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: BAILEY JAMES SCHOMMER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BAILEY JAMES SCHOMMER', 'MOLU18007566464', 'B2501312', NULL, NULL, 'JACKSONVILLE', '2025-07-28', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: BRENT WALLING
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BRENT WALLING', 'MOLU18007567455', 'B2501310', NULL, '7/31 - spoke to customer by phone to make payment
7/30 - sent follow up email requesting status of payment / vm box full
7/25 - sent email requesting status of payment / voicemail box was full', 'JACKSONVILLE', '2025-07-28', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: FOOK MENG CHE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'FOOK MENG CHE', 'MOLU18007566382', 'B2501302', NULL, '7/21 - emailed Vincent to reset user password for AH portal - will make payment once he is able to login', 'JACKSONVILLE', '2025-07-28', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: INDAR BALKISSOON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'INDAR BALKISSOON', 'MOLU18007566470', 'B2501304', NULL, 'E&R Imports / MERCEDES', 'JACKSONVILLE', '2025-07-28', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: INDAR BALKISSOON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'INDAR BALKISSOON', 'MOLU18007566490', 'B2501303', NULL, 'E&R Imports / Toyota Altezza', 'JACKSONVILLE', '2025-07-30', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: LUIS RODRIGUEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LUIS RODRIGUEZ', 'MOLU18007566398', 'B2501305', 'koolio202@gmail.com', NULL, 'JACKSONVILLE', '2025-07-28', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: ROBERT LOPEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ROBERT LOPEZ', 'MOLU18007566438', 'B2501309', NULL, '7/30 - sent follow up email requesting status of pmt and left a voicemail.
7/25 - Called customer regarding payment - he will submit payment online today.', 'JACKSONVILLE', '2025-07-30', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JIAJIE PENG
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JIAJIE PENG', 'MOLU18007565998', 'B2501307', 'mclarenm6@gmail.com', 'Inland quote sent to customer 6/30', 'NEWARK', '2025-08-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JOSEPH LIRIANO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOSEPH LIRIANO', 'MOLU18007569226', 'B2501306', 'joseph.liriano123@gmail.com', NULL, 'NEWARK', '2025-08-01', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: POPULAR GLASS DESIGNS CORP
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PROGRESS ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'POPULAR GLASS DESIGNS CORP', 'MOLU18007592329', 'B2501342', 'jimenezrandy@hotmail.com', NULL, 'JACKSONVILLE', '2025-07-28', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 14: HOEGH COPENHAGEN (Voyage 92)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH COPENHAGEN', '92', '2025-06-23')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DIRK JOHNSTON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH COPENHAGEN' AND voyage_number = '92'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DIRK JOHNSTON', 'HOEGCJ92KS510028', 'B2501301', NULL, 'TVBug', 'FREEPORT', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: ENRIKE SERRANO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH COPENHAGEN' AND voyage_number = '92'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ENRIKE SERRANO', 'HOEGCJ92KS510032', 'B2501300', 'enrike.a.serrano@gmail.com', NULL, 'FREEPORT', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 15: CATTLEYA ACE (Voyage 0104A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('CATTLEYA ACE', '0104A', '2025-06-23')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DYLAN GREY JOYCE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DYLAN GREY JOYCE', 'MOLU18007577670', 'B2501340', NULL, '7/21 - spoke to customer by phone will be making payment today', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18007577371', 'B2501341', NULL, NULL, 'LOS ANGELES', '2025-11-05', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: P1 MOTORS LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'P1 MOTORS LLC', 'MOLU18007559850', 'B2501416', 'dkelly@dkp-engineering.com', 'HONDA CIVIC
would like to use same trucker as previous loads BERG TRANSPORTATION', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: P1 MOTORS LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'P1 MOTORS LLC', 'MOLU18007577664', 'B2501343', 'dkelly@dkp-engineering.com', 'TOYOTA CROWN
would like to use same trucker as previous loads BERG TRANSPORTATION', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: TAKEDA ENTERPRISE INC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'TAKEDA ENTERPRISE INC', 'MOLU18007577685', 'B2501338', NULL, '7/21 - sending wire transfer today for payment on all vehicles - credit card would not work online', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: NICHOLAS EMERY
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'NICHOLAS EMERY', 'MOLU18007559974', 'B2501339', NULL, NULL, 'TACOMA', '2025-07-14', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: RYANN SIMMONS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RYANN SIMMONS', 'MOLU18007609083', 'B2501422', 'rls1233@yahoo.com', NULL, 'TACOMA', '2025-07-14', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: LIBRADO HEREDIA III
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LIBRADO HEREDIA III', 'MOLU18007612317', 'B2501423', 'LibradoherediaIII@hotmail.com', 'VEHICLE TO BE DELIERED TO CUSTOMERS PARENTS Lorena Davila Martinez & Librado Heredia Villegas TEL # 619-638-9215', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: TREY CADOO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'TREY CADOO', 'MOLU18007610551', 'B2501424', 'treycadoo@gmail.com', 'sent follow up on inland quote 6/30', 'LOS ANGELES', '2025-07-20', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: LANDON NAGAO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LANDON NAGAO', 'MOLU18007612322', 'B2501425', 'landon.nagao@gmail.com', 'NINJA MARINE
ADDED TRUCKING AFTER INITIAL INVOICE WAS PAID SO I CHANGED IT TO UNPAID (ALDO).  HE''S BEING DEPLOYED 7/22.  ONCE IT''S RELEASED WE NEED TO GET A POINT OF CONTACT FOR HIM FOR TRANSCAR.', 'LOS ANGELES', '2025-07-21', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: KEVIN WANG XU
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KEVIN WANG XU', 'MOLU18007612343', 'B2501426', 'kevinxu8099@gmail.com', NULL, 'TACOMA', '2025-07-14', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: P1 MOTORS LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '0104A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'P1 MOTORS LLC', 'MOLU18007608981', 'B2501427', NULL, 'TOYOTA CENTURY
would like to use same trucker as previous loads BERG TRANSPORTATION', 'LOS ANGELES', '2025-07-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 16: HYPERION LEADER (Voyage 133)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HYPERION LEADER', '133', '2025-07-08')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: HIDEAKI SHIBATA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HYPERION LEADER' AND voyage_number = '133'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'HIDEAKI SHIBATA', 'NYKS182224348', 'B2501474', 'hideakishibata8@gmail.com', '7/24 - CBP HOLD
7/16 - NO NOA FEES', 'HONOLULU', '2025-07-23', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EOIN COSTELLO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HYPERION LEADER' AND voyage_number = '133'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EOIN COSTELLO', 'NYKS182224605', 'B2501512', NULL, '7/24 - CBP Hold
Entry cancelled an resubmitted using File # B2501512A
7/16 - NO NOA FEES', 'HONOLULU', '2025-07-23', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 17: SALOME (Voyage AF508)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('SALOME', 'AF508', '2025-07-12')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EPHAN ARGALLES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SALOME' AND voyage_number = 'AF508'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EPHAN ARGALLES', 'JP2493850', 'B2501488', 'eargalles@yahoo.com', 'ALTERNATE DELIVERY POC: Kia Taylor /kiajadekt@gmail.com /(978) 596-8734
TRANS SHIPS VIA PANAMA - MORNING CELESTA BR517', 'GALVESTON', '2025-08-24', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 18: VENUS SPIRIT (Voyage 0088A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('VENUS SPIRIT', '0088A', '2025-07-16')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: ELDIIAR T ABDYRAKMANOV
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'VENUS SPIRIT' AND voyage_number = '0088A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ELDIIAR T ABDYRAKMANOV', 'MOLU18007656953', 'B2501620', '996usa@gmail.com', NULL, 'LOS ANGELES', '2025-08-04', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'VENUS SPIRIT' AND voyage_number = '0088A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18007666885', 'B2501619', 'jaysummers93@gmail.com', NULL, 'LOS ANGELES', '2025-08-02', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: KEVIN J SORIA SHAW
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'VENUS SPIRIT' AND voyage_number = '0088A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KEVIN J SORIA SHAW', 'MOLU18007657369', 'B2501621', 'kevinssj89@gmail.com', NULL, 'LOS ANGELES', '2025-08-04', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 19: LIBERTY ACE (Voyage 0159A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('LIBERTY ACE', '0159A', '2025-07-24')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: BYRON MINGO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LIBERTY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BYRON MINGO', 'MOLU18007715568', 'B2501625', NULL, 'CUSTOMER DECLINED TRUCKING', 'LOS ANGELES', '2025-08-13', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: KHOA NGUYEN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LIBERTY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KHOA NGUYEN', 'MOLU18007714345', 'B2501626', NULL, 'CUSTOMER DECLINED TRUCKING', 'LOS ANGELES', '2025-08-13', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MR. JEREMIAH PHILIPS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LIBERTY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MR. JEREMIAH PHILIPS', 'MOLU18007717703', 'B2501627', NULL, 'CUSTOMER WANTS TRUCKING', 'LOS ANGELES', '2025-08-13', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 20: TYSLA (Voyage AW507)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TYSLA', 'AW507', '2025-07-27')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JASON CHRISTOPHER OTTOMEYER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TYSLA' AND voyage_number = 'AW507'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JASON CHRISTOPHER OTTOMEYER', 'JP2495455', 'B2501630', 'ottodog73@sbcglobal.net', NULL, 'GALVESTON', '2025-09-24', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MATTHEW PINKNEY
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TYSLA' AND voyage_number = 'AW507'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MATTHEW PINKNEY', 'JP2495559', 'B2501629', 'lookdashing@gmail.com', '9/5 - customer called to get quote to Artesia, NM - updated delivery address in Bitrix', 'GALVESTON', '2025-09-24', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: BENJAMIN BALDWIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TYSLA' AND voyage_number = 'AW507'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BENJAMIN BALDWIN', 'JP2496204', 'B2501663', 'baldwin.bena@gmail.com', '9/18 - cancelled inland
9/16 - customer to call back on friday and let us know if he would like to cancel inland if a driver has not been assigned.
9/8 - WWL confirmed release but it is not yet showing in the terminal''s system', 'NEWPORT NEWS', '2025-09-06', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 21: SERENITY HIGHWAY (Voyage 14)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('SERENITY HIGHWAY', '14', '2025-07-26')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: GENE GIBO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SERENITY HIGHWAY' AND voyage_number = '14'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'GENE GIBO', 'KKLUJPN617886', 'B2501631', 'ggibo@hotmail.com', '7/25 - emailed reminder to customer to register for AHUSA Acct', 'HONOLULU', '2025-08-06', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 22: PARADISE ACE (Voyage 0160A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PARADISE ACE', '0160A', '2025-07-30')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0160A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007727825', 'B2501688', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER
DANIEL PELLEGRINO', 'JACKSONVILLE', '2025-08-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0160A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007727810', 'B2501689', 'DanielP@estoyota.com', '9/2 - on AG HOLD
USES UMBRELLA TRUCKING - ADD TO DELIVERY ORDER
DANIEL PELLEGRINO', 'JACKSONVILLE', '2025-08-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JUAN BORDELIES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0160A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JUAN BORDELIES', 'MOLU18007714670', 'B2501690', 'mrbordelies@gmail.com', '8/6 - registered AH account', 'NEWARK', '2025-09-03', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MARC MATHIS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0160A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MARC MATHIS', 'MOLU18007727830', 'B2501691', 'mnms1234@hotmail.com', NULL, 'NEWARK', '2025-09-03', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: SEAN GITTER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0160A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN GITTER', 'MOLU18007728122', 'B2501692', 'sean_gitter@yahoo.com', '8/25 - Req NOA from Norton Lillu', 'NEWARK', '2025-11-18', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 23: LAKE HERMAN (Voyage 0013A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('LAKE HERMAN', '0013A', '2025-08-03')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: CHRISTIAN EVAN CORDEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LAKE HERMAN' AND voyage_number = '0013A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTIAN EVAN CORDEZ', 'MOLU18007765126', 'B2501708', 'icyhondaa@gmail.com', NULL, 'LOS ANGELES', '2025-08-23', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: PAUL HORNE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LAKE HERMAN' AND voyage_number = '0013A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'PAUL HORNE', 'MOLU18007771860', 'B2501709', 'kustomwraps4you@gmail.com', '9/16 - emailed customer requesting status of payment
8/28 - sent customer email requesting status of payment', 'LOS ANGELES', '2025-08-23', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JOSHUA KEAGEN BROWN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'LAKE HERMAN' AND voyage_number = '0013A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOSHUA KEAGEN BROWN', 'MOLU18007764705', 'B2501710', 'pilotintraining@hotmail.com', '8/20 - On AG HOLD', 'TACOMA', '2025-08-17', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 24: ELEGANT ACE (Voyage 0093A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('ELEGANT ACE', '0093A', '2025-08-06')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007780959', 'B2501744', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007780943', 'B2501745', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007752392', 'B2501746', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784698', 'B2501747', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784701', 'B2501748', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784717', 'B2501749', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784168', 'B2501750', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784152', 'B2501751', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784147', 'B2501752', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007784722', 'B2501753', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007785708', 'B2501754', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007785713', 'B2501755', 'DanielP@estoyota.com', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JASON JUTRAS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JASON JUTRAS', 'MOLU18007783726', 'B2501756', 'jasonjutras44@gmail.com', 'REVISED INVOICE ISSUED 9/24', 'NEWARK', '2025-09-11', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JONATHAN DOMBROSKI
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JONATHAN DOMBROSKI', 'MOLU18007783731', 'B2501757', 'StamfordImports@gmail.com', '9/15 - sent customer email and left vm for status of payment', 'NEWARK', '2025-09-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MICHAEL D MYERS JR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MICHAEL D MYERS JR', 'MOLU18007752411', 'B2501758', 'mmyers_417@hotmail.com', NULL, 'NEWARK', '2025-09-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: TRAVIS WALTERICK
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'TRAVIS WALTERICK', 'MOLU18007780970', 'B2501759', 'twalterick20@gmail.com', NULL, 'NEWARK', '2025-09-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: MR.JUSTIN MILLER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MR.JUSTIN MILLER', 'MOLU18007805532', 'B2501788', NULL, NULL, 'BALTIMORE', '2025-09-14', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: BENITO SAENZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BENITO SAENZ', 'MOLU18007803925', 'B2501789', 'benito.saenz.1@gmail.com', '9/10 - AG HOLD', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: DANIEL PELLEGRINO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DANIEL PELLEGRINO', 'MOLU18007804074', 'B2501790', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007803972', 'B2501791', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804080', 'B2501792', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007803993', 'B2501793', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804006', 'B2501794', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804011', 'B2501795', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804027', 'B2501796', NULL, '9/12 - AG TREATMENT REQUIRED TO START TREATMENT 9/17 and finish 9/18

ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804032', 'B2501797', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804048', 'B2501798', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804053', 'B2501799', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007804069', 'B2501800', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007805548', 'B2501801', NULL, 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAMES DURHAM
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAMES DURHAM', 'MOLU18007803988', 'B2501803', NULL, '9/10 - AG HOLD', 'JACKSONVILLE', '2025-09-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: AIMAL WAJIHUDDIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'AIMAL WAJIHUDDIN', 'MOLU18007805553', 'B2501804', NULL, NULL, 'NEWARK', '2025-09-13', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: ROMAN GULLAND
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ROMAN GULLAND', 'MOLU18007804789', 'B2501806', NULL, NULL, 'NEWARK', '2025-09-13', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: SHUICHIRO HAYASHI
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SHUICHIRO HAYASHI', 'MOLU18007805569', 'B2501807', NULL, 'Bond under review by underwriting team', 'NEWARK', '2025-09-13', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: YANNICK S CHERY
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'ELEGANT ACE' AND voyage_number = '0093A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'YANNICK S CHERY', 'MOLU18007804768', 'B2501808', NULL, NULL, 'NEWARK', '2025-09-13', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 25: GRAND DUKE (Voyage 0019A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('GRAND DUKE', '0019A', '2025-08-16')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: BENJAMIN RICHARD MILLER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0019A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BENJAMIN RICHARD MILLER', 'MOLU18007838705', 'B2501859', 'zuk87@icloud.com', NULL, 'LOS ANGELES', '2025-09-10', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: HONEY LYN RIVERA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0019A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'HONEY LYN RIVERA', 'MOLU18007836317', 'B2501860', 'ronell671@gmail.com', '9/8 - Left VM requesting status of payment', 'LOS ANGELES', '2025-09-10', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAMES RY GARRISON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0019A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAMES RY GARRISON', 'MOLU18007838623', 'B2501861', 'crankgrump@gmail.com', '9/5 - on AG HOLD', 'TACOMA', '2025-09-03', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: COREY SCHATZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0019A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'COREY SCHATZ', 'MOLU18007866501', 'B2501875', 'coreyschatz72@gmail.com', NULL, 'LOS ANGELES', '2025-09-10', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: WILLIAM HUMBERTO BAZALAR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0019A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'WILLIAM HUMBERTO BAZALAR', 'MOLU18007866498', 'B2501876', 'bazwill0405@gmail.com', NULL, 'LOS ANGELES', '2025-09-10', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 26: BOSPORUS HIGHWAY (Voyage 155)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('BOSPORUS HIGHWAY', '155', '2025-08-29')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: BRONSON OKA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'BOSPORUS HIGHWAY' AND voyage_number = '155'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'BRONSON OKA', 'KKLUJPN619523', 'B2501906', 'abunai59@gmail.com', '8/27/25 NEED POA. 
8/28/25 POA received & added to B folder.
9/10 REG DOCS uploaded to Bitrix', 'HONOLULU', '2025-09-07', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 27: CRYSTAL ACE (Voyage 0110A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('CRYSTAL ACE', '0110A', '2025-08-30')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DANIEL PELLEGRINO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DANIEL PELLEGRINO', 'MOLU18007898089', 'B2501942', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007853335', 'B2501936', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007898073', 'B2501937', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007898983', 'B2501939', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007898999', 'B2501940', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007898941', 'B2501802', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: ILIA MOSENKO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ILIA MOSENKO', 'MOLU18007898920', 'B2501941', 'mosia8@mail.ru', '9/3 - sent follow up on inland quote 
9/9 waiting to void old bond, and create new one with new bond amount
9/12 both bond numbers added to MAGAYA 
9/22 customer has changed mind about receiving inland.
9/23 waiting for Magaya to resolve issue with transmitting due to customer having two bonds.', 'JACKSONVILLE', '2025-10-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CRYSTAL ACE' AND voyage_number = '0110A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007905526', 'B2501947', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-01', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 28: TALISMAN (Voyage AW508)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TALISMAN', 'AW508', '2025-09-04')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: KORY RUSSELL
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TALISMAN' AND voyage_number = 'AW508'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KORY RUSSELL', 'JP2502952', 'B2501961', 'korymrussell@gmail.com', '9/19 inland quote sent', 'NEWPORT NEWS', '2025-10-11', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 29: GRAND CHAMPION (Voyage 0010A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('GRAND CHAMPION', '0010A', '2025-09-08')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND CHAMPION' AND voyage_number = '0010A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18007920393', 'B2501989', 'DanielP@estoyota.com', '9/17 awaiting B/L', 'JACKSONVILLE', '2025-10-06', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 30: EUPHONY ACE (Voyage 0159A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('EUPHONY ACE', '0159A', '2025-09-11')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: ANGELO LEONARDO LEONE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'EUPHONY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ANGELO LEONARDO LEONE', 'MOLU18007934669', 'B2502001', 'vannosangelo@gmail.com', '9/16 - Sent AH Registration follow up email 
9/17 left vm asking client to check email and register autohub acct
9/18 requested inland', 'LOS ANGELES', '2025-10-06', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'EUPHONY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18007934674', 'B2502002', 'jaysummers93@gmail.com', NULL, 'LOS ANGELES', '2025-10-06', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: LINDA L JONES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'EUPHONY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LINDA L JONES', 'MOLU18007936770', 'B2501999', 'tonyjones777@hotmail.com', '9/16 - Sent AH Registration follow up email 
9/17 left vm asking client to check email and register autohub acct
9/23 called customer, either the signal was lost or she hung up. I then called her a second time and it went to voicemail so I left a msg', 'TACOMA', '2025-10-02', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: STEFAN CRISTOBAL
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'EUPHONY ACE' AND voyage_number = '0159A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'STEFAN CRISTOBAL', 'MOLU18007935644', 'B2502000', 'stefancristobal@gmail.com', '9/16 emailed autohub JP for email & to verify phone number since I keep getting the busy signal', 'TACOMA', '2025-10-02', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 31: HOEGH TROTTER (Voyage 49)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH TROTTER', '49', '2025-09-17')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JOSHUA WATTERS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TROTTER' AND voyage_number = '49'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOSHUA WATTERS', 'HOEG7Q49KBBA0009', 'B2502020', 'mrmoustachephonerepair@gmail.com', '9/15 reached out for inland quote. 
10/21 WAITING FOR UPDATED INVOICE TO BE PAID', 'BALTIMORE', '2025-10-31', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TROTTER' AND voyage_number = '49'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'HOEG7Q49KBJX0002', 'B2502021', 'DanielP@estoyota.com', NULL, 'JACKSONVILLE', '2025-10-24', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: JAMES MICHAEL KIRBY II
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TROTTER' AND voyage_number = '49'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAMES MICHAEL KIRBY II', 'HOEG7Q49KS510009', 'B2502037', 'minis.dioxins9w@icloud.com', '9/19 Requested quote for inland
10/1 follow up email sent requesting confirmation of inland', 'FREEPORT', '2025-10-21', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 32: PARSIFAL (Voyage AW509)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PARSIFAL', 'AW509', '2025-09-20')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JARED ATKINSON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARSIFAL' AND voyage_number = 'AW509'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JARED ATKINSON', 'JP2507073', '2502052', 'jatkinson10@gmail.com', '9/22 requested quote for inland.
9/26 customer confirmed inland and the price from 8/11 is still good.', 'BRUNSWICK', '2025-11-20', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 33: GRAND DUKE (Voyage 0020A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('GRAND DUKE', '0020A', '2025-09-27')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DANIEL MARTINEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DUKE' AND voyage_number = '0020A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DANIEL MARTINEZ', 'MOLU18008013231', 'B2502108', 'dmartinez1924@gmail.com', '9/17 sent inland quote
10/1 follow up email sent requesting confirmation of inland', 'LOS ANGELES', '2025-10-23', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 34: SPLENDID ACE (Voyage 0171A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('SPLENDID ACE', '0171A', '2025-10-02')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18008055406', 'B2502119', 'danielp@estoyota.com', NULL, 'JACKSONVILLE', '2025-11-07', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18008049790', 'B2502120', 'danielp@estoyota.com', NULL, 'JACKSONVILLE', '2025-11-07', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JESSE DAANE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JESSE DAANE', 'MOLU18008055411', 'B2502121', 'J11daane@gmail.com', NULL, 'JACKSONVILLE', '2025-11-11', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KELLIE PAULINE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KELLIE PAULINE', 'MOLU18008055432', 'B2502122', 'aussiegirl38@gmail.com', '10/3 sent follow up email to register account 
10/15 waiting for quote so customer can confirm whether or not she wants inland', 'JACKSONVILLE', '2025-11-11', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KENNETH R EHRESMAN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KENNETH R EHRESMAN', 'MOLU18008055427', 'B2502123', 'kenny@jkadven.com', NULL, 'JACKSONVILLE', '2025-11-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SALVERIO MOLINA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SALVERIO MOLINA', 'MOLU18007997029', 'B2502124', 'salmolina48@gmail.com', '10/3 sent follow up email to register account', 'JACKSONVILLE', '2025-11-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KELIM SALJANIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KELIM SALJANIN', 'MOLU18007997040', 'B2502125', 'kelim-milan@hotmail.com', NULL, 'NEWARK', '2025-11-18', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KIRK CORBETT
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KIRK CORBETT', 'MOLU18008055495', 'B2502126', 'kirk@clintonsbodyshop.com', '10/3 sent follow up email to register account', 'NEWARK', '2025-11-18', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: LEON LEE
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'LEON LEE', 'MOLU18008055474', 'B2502127', 'Leco4l@yahoo.com', NULL, 'NEWARK', '2025-11-18', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SEAN GITTER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN GITTER', 'MOLU18008055480', 'B2502128', 'sean_gitter@yahoo.com', '10/15 waiting for quote', 'NEWARK', '2025-11-14', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: DAVID ZAMORA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DAVID ZAMORA', 'MOLU18007996697', 'B2502203', 'davenamyz@yahoo.com', '10/16 sent email to register acct', 'JACKSONVILLE', '2025-11-11', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: ENRIQUE SUAREZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ENRIQUE SUAREZ', 'MOLU18008094629', 'B2502204', 'INFO@KMPAINTING.COM', '10/22 sent follow up email to customer to confirm inland
11/5 WAITING FOR NOA', 'JACKSONVILLE', '2025-11-11', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: RICARDO MINOTT
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RICARDO MINOTT', 'MOLU18008095733', 'B2502205', 'RICARDOM@ESTOYOTA.COM', '10/16 sent email to register acct', 'JACKSONVILLE', '2025-11-11', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: CHRISTIAN SCHMITT
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTIAN SCHMITT', 'MOLU18008095754', 'B2502206', 'cschmitt2015@yahoo.com', '10/15 missing english export

10/22 customer quoted on 09/17, waiting on acceptance', 'NEWARK', '2025-11-18', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: WILLIAM HUNTER
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SPLENDID ACE' AND voyage_number = '0171A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'WILLIAM HUNTER', 'MOLU18008095749', 'B2502207', 'WJHUNTE@ILSTU.EDU', '10/29 - Spoke to customer by phone he will be registering today
10/16, 10/22, 10/29 sent email to register acct', 'NEWARK', '2025-11-18', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 35: HOEGH TOKYO (Voyage 120)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HOEGH TOKYO', '120', '2025-10-10')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: RYAN ABBOTT
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TOKYO' AND voyage_number = '120'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RYAN ABBOTT', 'HOEGY120KBBA0004', 'B2502170', 'rabbitt724@gmail.com', NULL, 'BALTIMORE', '2025-11-21', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: DONALD HARMON SR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HOEGH TOKYO' AND voyage_number = '120'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DONALD HARMON SR', 'HOEGY120KSBA0001', 'B2502178', 'donaldharmon@sbcglobal.net', '10/9 waiting for customer to register bitrix account', 'BALTIMORE', '2025-11-21', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 36: TRANQUIL ACE (Voyage 0124A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TRANQUIL ACE', '0124A', '2025-10-14')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18008089561', 'B2502180', 'jaysummers93@gmail.com', NULL, 'LOS ANGELES', '2025-11-03', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18008089556', 'B2502181', 'jaysummers93@gmail.com', NULL, 'LOS ANGELES', '2025-11-03', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JOHNN KELLY
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOHNN KELLY', 'MOLU18008089582', 'B2502182', 'dkelly@dkp-engineering.com', '10/4 waiting for customer to upload docs to bitrix, so that I can do his ISF', 'LOS ANGELES', '2025-11-03', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KYLE WILLIAMS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KYLE WILLIAMS', 'MOLU18008090080', 'B2502183', 'KYLEWILLIAMS491@GMAIL.COM', NULL, 'LOS ANGELES', '2025-11-05', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: P1 MOTORS LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'P1 MOTORS LLC', 'MOLU18008089535', 'B2502184', 'dkelly@dkp-engineering.com', NULL, 'LOS ANGELES', '2025-11-03', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: STEPHEN HADDAD
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'STEPHEN HADDAD', 'MOLU18008089577', 'B2502185', 'STEPHENJHADDAD@GMAIL.COM', '10/14 Customer not registered yet
10/21 emailed customer to register account
11/6/25 left customer a vm asking him to confirm he received invoice', 'LOS ANGELES', '2025-11-05', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: STEVEN KUMAR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'STEVEN KUMAR', 'MOLU18008089540', 'B2502186', 'trippleh1@live.com', '10/14 NOT registered in Bitrix yet
10/21 emailed client to register acct', 'LOS ANGELES', '2025-11-05', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JASON AMOS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TRANQUIL ACE' AND voyage_number = '0124A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JASON AMOS', 'MOLU18008090095', 'B2502179', 'doriNIGHTS@gmail.com', '10/21 via email customer says he will upload POA and ID 
10/22 left vm asking customer to upload documents so that I can do ISF', 'LOS ANGELES', '2025-11-05', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 37: JUPITER LEADER (Voyage 75)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('JUPITER LEADER', '75', '2025-10-16')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: CHRISTOPHER KANNO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'JUPITER LEADER' AND voyage_number = '75'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTOPHER KANNO', 'NYKS182242692', 'B2502224', 'kannokoi@yahoo.com', NULL, 'HONOLULU', '2025-10-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: CHRISTIAN HORTON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'JUPITER LEADER' AND voyage_number = '75'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTIAN HORTON', 'NYKS182243427', 'B2502218', 'christiantyhorton13@gmail.com', NULL, 'HONOLULU', '2025-10-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Vessel 38: TARAGO (Voyage AF513)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TARAGO', 'AF513', '2025-10-20')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: DAVID BECK
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TARAGO' AND voyage_number = 'AF513'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'DAVID BECK', 'JP2511355', 'B2502219', 'djbeck10@gmail.com', '10/26 sent reminder email to register autohub account
10/31 CUSTOMER EMAILED SAYING HE REGISTERED, BUT HAVE TO GIVE 24 HRS FOR ACCOUNT TO BE ACTIVE', 'GALVESTON', '2025-11-30', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: RICHARD CRAIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TARAGO' AND voyage_number = 'AF513'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'RICHARD CRAIN', 'JP2512204', 'B2502244', 'joeycrain12@gmail.com', NULL, 'BRUNSWICK', '2025-11-22', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 39: SANDERLING ACE (Voyage 0125A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('SANDERLING ACE', '0125A', '2025-10-25')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: ANGEL IBARRA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'ANGEL IBARRA', 'MOLU18008143657', 'B2502257', 'angelistic5969@gmail.com', NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: CHRISTOPHER LINARES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTOPHER LINARES', 'MOLU18008146419', 'B2502258', 'rook1562@gmail.com', NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JAY SUN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JAY SUN', 'MOLU18008146384', 'B2502256', 'jaysummers93@gmail.com', NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: JONATHON ROOK
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JONATHON ROOK', 'MOLU18008146403', 'B2502255', NULL, NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KRISTOPHER HAWKINS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KRISTOPHER HAWKINS', 'MOLU18008146390', 'B2502254', NULL, NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SHUN YOSHIMURA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SHUN YOSHIMURA', 'MOLU18008149418', 'B2502253', 'lil.g0ma.shun@gmail.com', NULL, 'LOS ANGELES', '2025-11-12', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: STEPHEN HADDAD
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'STEPHEN HADDAD', 'MOLU18008146379', 'B2502252', 'stephenjhaddad@gmail.com', NULL, 'LOS ANGELES', '2025-11-12', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'completed';

-- Customer: CHRISTOPHER MYLES MORTON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTOPHER MYLES MORTON', 'MOLU18008142964', 'B2502251', 'ChrynLLC@gmail.com', '11/6 agriculture hold', 'TACOMA', '2025-11-06', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: GARY GUDGEL
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'GARY GUDGEL', 'MOLU18008142959', 'B2502250', 'bamcinc@gmail.com', 'USE ALTERNATE EMAIL FOR RELEASE DOCS / bamcinc@gmail.com unable to get emails sent to his original email address', 'TACOMA', '2025-11-06', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: MIRJAWAD HASHIMI
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'SANDERLING ACE' AND voyage_number = '0125A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MIRJAWAD HASHIMI', 'MOLU18008149911', 'B2502249', 'hashimijwd@yahoo.com', NULL, 'TACOMA', '2025-11-06', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 40: MIRACULOUS ACE (Voyage 0138A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('MIRACULOUS ACE', '0138A', '2025-10-28')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: MARK EDENS
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'MIRACULOUS ACE' AND voyage_number = '0138A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MARK EDENS', 'MOLU18008167875', 'B2502264', 'MARK_EDENS@YAHOO.COM', NULL, 'NEWARK', '2025-12-10', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: MR.GREGORY ANDREW WIEHEBRINK
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'MIRACULOUS ACE' AND voyage_number = '0138A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MR.GREGORY ANDREW WIEHEBRINK', 'MOLU18008167880', 'B2502265', 'andrew.wiehebrink@independentstavecompany.com', NULL, 'NEWARK', '2025-12-10', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'MIRACULOUS ACE' AND voyage_number = '0138A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18008180521', 'B2502271', 'DANIELPESTOYOTA.COM', NULL, 'JACKSONVILLE', '2025-11-27', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: MULTI 21 LLC
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'MIRACULOUS ACE' AND voyage_number = '0138A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MULTI 21 LLC', 'MOLU18008180537', 'B2502272', 'eaton.alexander.2000@gmail.com', '11/14 emailed customer to confirm inland
11/18 left vm for customer to confirm inland', 'JACKSONVILLE', '2025-11-27', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: KOKI TSUJIKAWA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'MIRACULOUS ACE' AND voyage_number = '0138A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'KOKI TSUJIKAWA', 'MOLU18008146785', 'B2502273', 'KOKI.TSUJIKAWA@GMAIL.COM', NULL, 'NEWARK', '2025-12-01', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 41: TONSBERG (Voyage AW510)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('TONSBERG', 'AW510', '2025-10-29')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JOHN KVETKO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TONSBERG' AND voyage_number = 'AW510'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOHN KVETKO', 'JP2513247', 'B2502262', 'KVETKO@HOTMAIL.COM', NULL, 'GALVESTON', '2025-12-15', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: PHILLIP M MUNSON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'TONSBERG' AND voyage_number = 'AW510'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'PHILLIP M MUNSON', 'JP2513244', 'B2502263', 'RDRACRLW@YAHOO.COM', NULL, 'GALVESTON', '2025-12-15', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 42: GRAND DOLPHIN (Voyage 30)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('GRAND DOLPHIN', '30', '2025-10-28')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: STEVEN NGO
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'GRAND DOLPHIN' AND voyage_number = '30'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'STEVEN NGO', 'NYKS182246012', 'B2502270', 'stevenxngo@yahoo.com', NULL, 'JACKSONVILLE', '2025-11-29', 'Y')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 43: PARADISE ACE (Voyage 0162A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('PARADISE ACE', '0162A', '2025-11-03')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: EARL STEWART TOYOTA
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'PARADISE ACE' AND voyage_number = '0162A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'EARL STEWART TOYOTA', 'MOLU18008187660', 'B2502301', 'DANIELPESTOYOTA', 'ADD UMBRELLA TRANSPORTATION LLC TO DELIVERY ORDER', 'JACKSONVILLE', '2025-12-08', 'N')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 44: CATTLEYA ACE (Voyage 107A)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('CATTLEYA ACE', '107A', '2025-22-19')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: NEAL PEARSON A
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'NEAL PEARSON A', 'MOLU18008200870', NULL, NULL, NULL, 'LOS ANGELES', '2025-12-13', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
  review_customer_docs = 'incomplete',
  file_single_entry_bond = 'incomplete',
  isf_transmit = 'incomplete',
  isf_match = 'incomplete',
  entry_created = 'incomplete',
  inland_confirm = 'incomplete',
  update_betrix_transport = 'incomplete',
  awis_invoice = 'incomplete',
  noa_received = 'incomplete',
  noa_accounting = 'incomplete',
  bitrix_eta = 'incomplete',
  arrival_email = 'incomplete',
  payment_check = 'incomplete',
  entry_transmitted = 'incomplete',
  cbp_release = 'incomplete',
  ssl_request = 'incomplete',
  ssl_confirmed = 'incomplete',
  release_notification = 'incomplete',
  upload_release_docs = 'incomplete',
  customs_clear_bitrix = 'incomplete',
  reg_docs_cbp = 'incomplete',
  reg_docs_bitrix = 'incomplete';

-- Customer: NORBERTO JORGE RODRIGUEZ
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'NORBERTO JORGE RODRIGUEZ', 'MOLU18008214920', NULL, NULL, NULL, 'LOS ANGELES', '2025-12-13', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: CHRISTOPHER MYLES MORTON
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'CHRISTOPHER MYLES MORTON', 'MOLU18008235305', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: GEORGE L PACKARD
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'GEORGE L PACKARD', 'MOLU18008232190', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: MANUEL A. TORRES
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'MANUEL A. TORRES', 'MOLU18008232158', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SEAN MICHAEL MARROQUIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN MICHAEL MARROQUIN', 'MOLU18008232163', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SEAN MICHAEL MARROQUIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN MICHAEL MARROQUIN', 'MOLU18008236220', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SEAN MICHAEL MARROQUIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN MICHAEL MARROQUIN', 'MOLU18008235985', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Customer: SEAN MICHAEL MARROQUIN
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'CATTLEYA ACE' AND voyage_number = '107A'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'SEAN MICHAEL MARROQUIN', 'MOLU18008231552', NULL, NULL, NULL, 'TACOMA', '2025-12-08', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Vessel 45: HARVEST LEADER (Voyage 90)
INSERT INTO vessels (vessel_name, voyage_number, ets)
VALUES ('HARVEST LEADER', '90', '2025-11-19')
ON CONFLICT (vessel_name, voyage_number) DO UPDATE SET ets = EXCLUDED.ets;

-- Customer: JOSH RASOR
WITH vessel AS (
  SELECT id FROM vessels WHERE vessel_name = 'HARVEST LEADER' AND voyage_number = '90'
),
customer AS (
  INSERT INTO customers (vessel_id, customer_name, bl_number, b_number, email, notes, pod, eta, inland)
  VALUES ((SELECT id FROM vessel), 'JOSH RASOR', 'NYKS182251380', NULL, NULL, NULL, 'HONOLULU', '2025-11-29', 'UNKNOWN')
  ON CONFLICT (bl_number, vessel_id) DO UPDATE SET
    customer_name = EXCLUDED.customer_name,
    b_number = EXCLUDED.b_number,
    email = EXCLUDED.email,
    notes = EXCLUDED.notes,
    pod = EXCLUDED.pod,
    eta = EXCLUDED.eta,
    inland = EXCLUDED.inland
  RETURNING id
)
INSERT INTO tasks (customer_id)
VALUES ((SELECT id FROM customer))
ON CONFLICT (customer_id) DO UPDATE SET
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
  reg_docs_bitrix = 'incomplete';

-- Commit transaction
COMMIT;

-- Migration complete!
-- Vessels: 45
-- Customers: 195
