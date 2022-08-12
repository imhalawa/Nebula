use sql_invoicing;
select 
	client_id,
	sum(invoice_total) as total_sales,
    count(*) as invoices_count
from invoices
group by client_id with rollup; -- Will apply the same Aggregate function on all records in the column


-- not available in sql server
select 
	state,
    city,
	sum(invoice_total) as total_sales
from invoices i
join clients c using (client_id)
group by state, city with rollup; -- It will rollup after each sub-group i.e. city
