-- Altering or Dropping Views
Use sql_invoicing;

-- Dropping Views
Drop View clients_balance;


-- Alter view using Create OR Replace
Create OR Replace View clients_balance AS	
    (
    SELECT 
    c.client_id,
    c.name,
    (SUM(p.amount)-SUM(i.invoice_total)) AS balance
FROM
    invoices i
        JOIN
    payments p ON p.invoice_id = i.invoice_id
        JOIN
    clients c ON c.client_id = i.client_id
GROUP BY i.client_id
);

-- Notes
-- Don't drop the view if your intension is to alter it.
-- It's recommended to save your views into separate files also put them under source control.


