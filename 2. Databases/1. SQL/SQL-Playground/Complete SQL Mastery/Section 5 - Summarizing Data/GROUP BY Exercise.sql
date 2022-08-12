use sql_invoicing;

select 
	p.date,
    pm.name as payment_method ,
    sum(amount) as total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
WHERE date >= '2019-01-01'
group by p.date, payment_method
order by date asc