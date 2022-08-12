use sql_invoicing;
Select 
	invoice_id,
	invoice_total,
    (
		Select AVG(invoice_total)
        From invoices
    )  as invoice_average,
    (
		Select p_i.invoice_total - avg(invoice_total)
        From invoices
    )  as difference
from invoices p_i;


-- Shorter Solution
Select 
	invoice_id,
	invoice_total,
    (
		Select AVG(invoice_total)
        From invoices
    )  as invoice_average,
    invoice_total - (select invoice_average)as difference
from invoices p_i;






-- Exercise
SELECT 
    client_id,
    name,
    (SELECT 
            SUM(invoice_total)
        FROM
            invoices
        WHERE
            c.client_id = client_id) AS total_sales,
    (SELECT 
            AVG(invoice_total)
        FROM
            invoices) AS invoice_average,
    (SELECT total_sales) - (SELECT invoice_average) AS difference
FROM
    clients c


