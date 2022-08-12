-- we can save our complex joins or sub-queries into a view  and start treating them as a table

use sql_invoicing;

Select c.client_id,
	   c.name,
       SUM(invoice_total) AS total_sales
From clients c
Inner join invoices i on i.client_id = c.client_id
group by c.client_id
Order by client_id asc;