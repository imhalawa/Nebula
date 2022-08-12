
Delimiter $$
Create Procedure get_invoices_with_balance()
Begin

SELECT 
    invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    (invoice_total - payment_total) as balance,
    invoice_date,
    due_date,
    payment_date
FROM
    invoices
WHERE
    (invoice_total - payment_total) > 0;
    
End$$
Delimiter ;

-- Call the stored procedure
call get_invoices_with_balance();