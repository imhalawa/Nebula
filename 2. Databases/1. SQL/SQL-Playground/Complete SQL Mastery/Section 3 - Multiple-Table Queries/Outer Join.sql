-- INNER Join
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- LEFT OUTER Join, will retrieve all data from customers
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT OUTER Join, will retrieve all data from orders (Similar to INNER Join)
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT OUTER Join, swapping the tables (get all data from customers)
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM  orders o
RIGHT JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- FULL OUTER Join, swapping the tables (get all data from customers)
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM  orders o
LEFT OUTER JOIN customers c
	ON c.customer_id = o.customer_id
    
UNION ALL

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM  orders o
RIGHT OUTER JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY customer_id