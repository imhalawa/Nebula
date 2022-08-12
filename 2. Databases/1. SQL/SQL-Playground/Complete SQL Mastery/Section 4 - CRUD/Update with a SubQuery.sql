Use sql_invoicing;

Update invoices
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 
(
SELECT 	client_id
from clients
Where name = 'Myworks'
);

-- But what if we had two 'Myworks' ?, Actually you'd want to use IN operator instead!
-- for example lets update all clients in CA and NY

Update invoices
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN 
(
SELECT 	client_id
from clients
Where state IN ('CA','NY')
)