Update invoices
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1;

Update invoices
SET payment_total = 0, payment_date = null
WHERE invoice_id = 1;

-- you can also do equations on updating!
Update invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE invoice_id = 3