INSERT INTO orders_archive 
(
SELECT *
FROM orders
WHere order_date < '2019-01-01'
) -- this is called a subquery

