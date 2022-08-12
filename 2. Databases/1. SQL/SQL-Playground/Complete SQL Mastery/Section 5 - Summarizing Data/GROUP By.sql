use sql_invoicing;

-- Get Total Sales for All Records
SELECT
	client_id,
	sum(invoice_total) AS total_sales
FROM invoices;

-- Get total Sales for each Client, Group similar client_Id into one row
-- What happens here is group_by arrange similar values in to chunks then
-- Aggregate functions calculate by column for each chunk
SELECT 
	client_id,
    sum(invoice_total) AS total_sales
FROM invoices
GROUP By client_id;

-- Get total Sales for each Client, Group similar client_Id into one row
-- Order them desc
-- Group By statement must percede OrderBy
SELECT 
	client_id,
    sum(invoice_total) AS total_sales
FROM invoices
GROUP By client_id
Order By total_sales DESC; -- aliases can be used as a column name

-- Get total Sales for each Client, Group similar client_Id into one row
-- Order them desc
-- filter by invoices occured before '2019-07-01'
SELECT 
	client_id
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP By client_id
Order By total_sales DESC; -- aliases can be used as a column name


-- Get Invoices by city
SELECT 
	c.state,
    c.city,
    SUM(i.invoice_total) as total_sales
FROM invoices i
JOIN clients c
	ON c.client_id = i.client_id
group by c.state, c.city
