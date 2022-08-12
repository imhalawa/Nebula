-- the following will delete all rows in the table
-- DELETE FROM Invoices

-- Conditional Delete
DELETE FROM Invoices
Where invoice_id = 1;

-- Delete using a SubQuery
DELETE FROM Invoices
Where client_id IN 
(
 Select client_id
 FROM clients
 WHERE name = 'Myworks'
)