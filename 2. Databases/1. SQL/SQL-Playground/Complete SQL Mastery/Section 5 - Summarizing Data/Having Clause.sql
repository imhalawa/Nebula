use sql_invoicing;

-- this will fail, because we don't know yet the total_sales for each client
select 
	client_id,
	sum(invoice_total) as total_sales
from invoices
Where total_sales > 50
group by client_id;

-- Solve using Having
select 
	client_id,
	sum(invoice_total) as total_sales
from invoices
group by client_id
Having total_sales > 50;



-- Compound Having filter
select 
	client_id,
	sum(invoice_total) as total_sales,
    count(*) as number_of_invoices
from invoices
group by client_id
Having total_sales > 500 AND number_of_invoices > 5;