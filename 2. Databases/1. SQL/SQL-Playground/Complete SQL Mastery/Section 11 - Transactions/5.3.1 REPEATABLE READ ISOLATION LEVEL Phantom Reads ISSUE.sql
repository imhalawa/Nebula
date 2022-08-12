USE sql_store;

-- SET ISOLATION LEVEL TO REPEATABLE READ, WILL READ THE FIRST VALUE ALWAYS WHERE BEEN COMMITTED OR NOT.
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

START TRANSACTION;

-- REPEATABLE READ ISOLATION LEVEL WILL NOT HANDLE PHANTOM READS
SELECT * FROM customers where state = 'VA';


-- In SESSION 2 w've update a customer to be located in 'VA' however it was not a part of the current result set.
-- and this is the phantom reads
-- run it again
COMMIT;
