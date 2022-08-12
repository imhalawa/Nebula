USE sql_store;

SELECT o.order_id, c.first_name, os.name, o.order_date, o.comments
FROM orders o
JOIN customers c 
	ON  o.customer_id = c.customer_id
JOIN order_statuses os 
	ON o.status = os.order_status_id;