SELECT 
    *
FROM
    (SELECT 
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
        clients c) AS sales_summary
WHERE total_sales is NOT NULL


-- Although, subQueries has a lot of benefits when used within from clause, but it's not readable and has a ton of disadvantages.
-- We can rather use VIEWS to encapsulate the SubQuery and give it a name, also dealing with it as a normal table!