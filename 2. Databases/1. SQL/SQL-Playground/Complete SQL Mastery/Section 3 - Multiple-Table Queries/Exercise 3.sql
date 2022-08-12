SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;
    
    
-- GET Ordered Items and thier ordered quantity
SELECT p.product_id, p.name, sum(oi.quantity) as Ordered
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name