-- LEFT OUTER Join, will retrieve all data from customers
-- ISSUES: Doesn't get all data because few results doesn't match
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
JOIN shippers sh -- will affect the previous LEFT Outer Join
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Solution here is using the Multi LEFT Outer JOIN
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;