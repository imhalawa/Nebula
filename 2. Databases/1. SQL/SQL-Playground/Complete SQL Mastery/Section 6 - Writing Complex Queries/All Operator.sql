-- Select Invoices larger than all invoices of client 3
Use sql_invoicing;

-- Using Aggregate Function
Select * 
From invoices
Where invoice_total > (
Select Max(invoice_total) 
From invoices
Where client_id = 3
);

-- Using All Operator
Select * 
From invoices
Where invoice_total > All (
Select invoice_total 
From invoices
Where client_id = 3
);
