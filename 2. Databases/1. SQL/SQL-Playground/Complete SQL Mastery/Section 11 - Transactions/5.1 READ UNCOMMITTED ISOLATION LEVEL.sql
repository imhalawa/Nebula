Use sql_store;

-- Set ISOLATION LEVEL to READ UNCOMMITTED, 
-- The NEXT Query will Read Uncommitted data made by a transaction.
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;


-- Yes we didn't start a transaction explicitly, but MYSQL is going to wrap the following statement it on it's own for us
SELECT points
FROM customers
WHERE customer_id=1;