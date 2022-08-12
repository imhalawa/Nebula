 -- Select Clients that have an invoice
 
 SELECT 
    *
FROM
    Clients c
WHERE
    EXISTS( SELECT 
            client_id
        FROM
            Invoices
        WHERE
            client_id = c.client_id);
            
-- Exists checks for a row that matches the upper criteria
-- It's usefull when we want to filter from external tables based on records from another table.
-- It's an alternative for using IN (1,2,3,4,5 ... ) especially when there might be a lot of records (10M)!
-- Even though the IN operator can handle a subQuery in the same way that Exists does, it's more effcient to use 
-- Exists Operator because sub query doesn't actually return the result set to the outer query








-- Find Products that have never been ordered
use sql_store;
Select * 
From products p 
Where NOT Exists (
	Select * 
    From order_items
    Where product_id = p.product_id
)