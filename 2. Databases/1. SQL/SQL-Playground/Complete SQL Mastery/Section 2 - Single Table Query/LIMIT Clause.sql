USE sql_store;

-- Get first 5 rows
SELECT * 
FROM customers
LIMIT 5;


-- Paginating: 3 results per page and move to page 3
SELECT * 
FROM customers
LIMIT 6,3;