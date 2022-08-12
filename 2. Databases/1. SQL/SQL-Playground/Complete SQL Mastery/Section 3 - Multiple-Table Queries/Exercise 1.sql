SELECT p.product_id, p.name, o.quantity, o.unit_price
FROM order_items o
JOIN products p
ON o.product_id = p.product_id