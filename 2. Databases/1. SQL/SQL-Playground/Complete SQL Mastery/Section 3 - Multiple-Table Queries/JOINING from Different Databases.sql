use sql_inventory;

SELECT *
FROM sql_store.order_items oi
JOIN sql_inventory.products p
	 ON oi.product_id = p.product_id