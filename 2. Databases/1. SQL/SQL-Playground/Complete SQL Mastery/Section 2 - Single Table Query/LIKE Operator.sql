-- Get All Customers with last_name starts with b
SELECT *
FROM customers
WHERE last_name LIKE 'B%';


-- Get All Customers with last_name starts with brush
SELECT *
FROM customers
WHERE last_name LIKE 'brush%';

-- Get All Customers with last_name contains b
SELECT *
FROM customers
WHERE last_name LIKE '%b%';

-- GET All customers with last name of 6 characters and ends with y
SELECT *
FROM customers
WHERE last_name LIKE '_____y';