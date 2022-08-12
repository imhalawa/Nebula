USE sql_store;

-- SET ISOLATION LEVEL TO REPEATABLE READ, WILL READ THE FIRST VALUE ALWAYS WHERE BEEN COMMITTED OR NOT.
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

START TRANSACTION;

-- REPEATABLE READ ISOLATION LEVEL WILL NOT HANDLE PHANTOM READS
SELECT * FROM customers where state = 'VA'; 

-- at this moment this query will wait, becuase there is a running transaction against the customers table
-- and on terminating that transaction (COMMIT, ROLLBACK) it will proceed with the execution
-- however it can timeout !

COMMIT;
