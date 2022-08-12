use sql_invoicing;

Create Table invoices_archive AS (
SELECT invoice_id, number, c.name, invoice_total, payment_total, invoice_date, due_date, payment_date
FROM Invoices inv
JOIN clients c
ON inv.client_id = c.client_id
Where inv.payment_date is not null
);



Create Table invoices_archive AS (
SELECT invoice_id, number, c.name, invoice_total, payment_total, invoice_date, due_date, payment_date
FROM Invoices inv
JOIN clients c
	USING(client_id)
Where inv.payment_date is not null
)