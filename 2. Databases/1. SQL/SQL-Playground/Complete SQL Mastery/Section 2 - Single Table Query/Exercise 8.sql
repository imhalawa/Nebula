-- Order that has not been shipped
SELECT *
FROM orders
WHERE shipped_date IS NULL OR shipper_id IS NULL