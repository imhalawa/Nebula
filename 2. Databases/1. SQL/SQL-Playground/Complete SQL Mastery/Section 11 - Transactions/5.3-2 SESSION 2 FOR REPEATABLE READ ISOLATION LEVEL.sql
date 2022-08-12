USE sql_store;

START TRANSACTION;

UPDATE CUSTOMERS 
SET points = 50
WHERE customer_id = 1;

COMMIT;
