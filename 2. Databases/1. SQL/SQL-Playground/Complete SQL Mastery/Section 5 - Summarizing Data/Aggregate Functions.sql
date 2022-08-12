use sql_invoicing;

SELECT 
	MAX(invoice_total) as highest,
    MIN(invoice_total) as lowest,
    AVG( invoice_total) as average,
    SUM(invoice_total) as total_sales,
    COUNT(invoice_total) as invoices_count,
    COUNT(DISTINCT payment_date) as count_of_payments, -- payment_date has NULL Values, It's not Counted
	COUNT(DISTINCT client_id) as count_of_payments -- payment_date has NULL Values, It's not Counted
FROM invoices
WHERE invoice_date > '2019-07-01'; -- Last Quarter

SELECT 
	MAX(invoice_date) as Latest_date,
    MIN(invoice_date) as Earliest_date,
    AVG( invoice_date) as Average -- what does it even mean?
FROM invoices;
