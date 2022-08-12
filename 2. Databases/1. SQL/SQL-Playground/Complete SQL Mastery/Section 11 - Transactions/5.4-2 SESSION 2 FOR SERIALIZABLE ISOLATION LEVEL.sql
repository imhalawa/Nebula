USE sql_store;

START TRANSACTION;

UPDATE CUSTOMERS 
SET state = 'VA'
WHERE customer_id = 3;

COMMIT;
