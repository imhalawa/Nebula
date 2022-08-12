USE sql_store;

SELECT o.order_id, o.product_id, o.quantity, o.unit_price
FROM order_items o
WHERE order_id = 2 
ORDER BY (o.quantity* o.unit_price) DESC 