-- find clients without invoices
use sql_invoicing;

-- using subqueries
SELECT 
    *
FROM
    clients
WHERE
    client_id NOT IN (SELECT DISTINCT
            client_id
        FROM
            invoices);

-- using joins
SELECT c.*
FROM clients c
LEFT JOIN Invoices i
	ON c.client_id = i.client_id
WHERE i.invoice_id is NULL;


-- Which one to use?
 -- that depends on 
 -- performance
 -- readability
-- you can also do the tradeoff using the execution plan, 
-- but if both has the same timing you should go for subQueries as it's more readable
-- However, too many subQueries can make it more complex to read


-- Exercise
-- FIND Customer who have ordered lettuce (id =3)
-- Select customer_id, first_name, last_name
USE sql_store;

-- Using Subquery
Select customer_id, first_name, last_name
from customers
where customer_id IN (
	Select distinct customer_id
    from orders o
    where o.order_id IN
	(
		Select order_id
        from order_items
        where product_id = 3
    )
);


-- Using Joins (more readable)
Select distinct c.customer_id, c.first_name, c.last_name
from customers c
Join orders o on c.customer_id = o.customer_id
join order_items oi on oi.order_id = o.order_id
where oi.product_id = 3

