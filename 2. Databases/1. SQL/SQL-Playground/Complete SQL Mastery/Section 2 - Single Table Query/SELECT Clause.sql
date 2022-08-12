SELECT 
	last_name,
    first_name,
    points,
    (points * 10) + 100 AS 'Discount Factor'
FROM customers;

SELECT state
FROM customers;

SELECT DISTINCT state
FROM customers