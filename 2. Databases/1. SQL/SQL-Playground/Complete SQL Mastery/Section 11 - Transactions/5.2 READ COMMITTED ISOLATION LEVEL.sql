USE sql_store;

-- SET ISOLATION LEVEL TO READ COMMITTED for next transaction
-- The NEXT Query will read COMMITTED Data only

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- READS COMMITTED DATA ONLY
-- We Don't have dirty reads, but we have another problem (UNREPEATABLE READS => Value changes after committing)

START TRANSACTION;

-- Here it was read as 20
SELECT points 
FROM customers
WHERE customer_id = 1;

-- After the other transaction was committed, it read the new value 30 (UNREPEATABLE READS)
-- TO SOLVE THIS, you'll need to increase the isolation level
SELECT points 
FROM customers
WHERE customer_id = 1;

COMMIT;