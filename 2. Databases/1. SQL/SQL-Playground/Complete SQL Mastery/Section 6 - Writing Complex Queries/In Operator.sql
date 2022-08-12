-- Find the products that have never been ordered

USE sql_store;
-- get all ordered products ids
Select product_id
From order_items;

-- get all products that have never been ordered
use sql_inventory;

Select * 
from products
where product_id NOT IN (
		Select DISTINCT product_id
		From sql_store.order_items
);


-- Exercise
-- Find clients without invoices

SELECT 
    *
FROM
    sql_invoicing.clients
WHERE
    client_id NOT IN (SELECT DISTINCT
            client_id
        FROM
            sql_invoicing.invoices);


