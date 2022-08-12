USE sql_store;

SELECT *
FROM customers;

SELECT 1,2;

SELECT c.first_name, c.last_name
FROM customers c
-- WHERE c.customer_id > 5
ORDER BY c.birth_date DESC;
