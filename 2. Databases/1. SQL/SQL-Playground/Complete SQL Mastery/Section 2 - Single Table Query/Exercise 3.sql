Use sql_store;

SELECT 
*, 
(quantity * unit_price) As totalPrice
FROM order_items
WHERE order_id=6 AND (quantity * unit_price) > 30