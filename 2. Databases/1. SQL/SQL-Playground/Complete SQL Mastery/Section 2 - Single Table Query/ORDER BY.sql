USE sql_store;

SELECT *
FROM customers
ORDER BY state, first_name;

-- Order by Column name that doesn't exist in the select clause
SELECT first_name, last_name
FROM customers
ORDER BY state;

-- Sorting using the alias name
SELECT first_name, last_name, 10 as points
FROM customers
ORDER BY points, first_name;

-- Sort using column position
SELECT first_name, last_name, 10 as points
FROM customers 
ORDER BY 1 ASC, 2 DESC;

-- Notes if we changed the order of columns in select clause everything will change as well
SELECT  last_name, first_name, 10 as points
FROM customers
ORDER BY 1 ASC, 2 DESC