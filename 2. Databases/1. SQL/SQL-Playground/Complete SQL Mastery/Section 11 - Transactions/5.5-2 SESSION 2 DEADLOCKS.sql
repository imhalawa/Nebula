use sql_store;

START TRANSACTION;
UPDATE Orders SET Status=1 WHERE order_id = 1;
UPDATE CUSTOMERS SET State='VA' WHERE customer_id = 1; -- Deadlock happens here
COMMIT;