Create View clients_balance AS	
    (
    SELECT 
    c.client_id,
    c.name,
    (SUM(p.amount)-SUM(i.invoice_total)) AS balance
FROM
    invoices i
        JOIN
    payments p ON p.invoice_id = i.invoice_id
        JOIN
    clients c ON c.client_id = i.client_id
GROUP BY i.client_id
)