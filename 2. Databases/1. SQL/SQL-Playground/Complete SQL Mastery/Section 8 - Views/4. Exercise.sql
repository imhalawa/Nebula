-- Create a view to see balance for each  client
-- clients_balance
-- client_id
-- name
-- balance -> Payment_total - Invoice_total

-- The Hard way
Select
	c.client_id,
    c.name,
    (Sum(i.total_payment) - Sum(i.invoice_total)) as balance
From
(
	Select i.client_id, i.invoice_id, i.invoice_total, Sum(p.amount) as total_payment
	From invoices i
	join payments p on p.invoice_id = i.invoice_id
	group by i.invoice_id
) as i
Join clients c on c.client_id = i.client_id
group by c.client_id;