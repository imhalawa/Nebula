-- WITH CHECK OPTION is used along with Create View / CREATE OR REPLACE VIEW Clause
-- mainly it will prevent any of the CRUD operations that might cause absence of one or more rows.
-- for example, deleting a row or updating a row in a way that could make it get excluded by an applied filter (where)

-- Example: a view for invoice with client balance 
CREATE OR REPLACE VIEW invoices_with_balance AS
    SELECT 
        invoice_id,
        number,
        client_id,
        invoice_total,
        payment_total,
        invoice_date,
        (invoice_total - payment_total) AS balance,
        due_date,
        payment_date
    FROM
        Invoices
    WHERE
        (invoice_total - payment_total) > 0;
        
-- Will cause the record with invoice_id = 2 to disappear        
Update invoices_with_balance 
SET
	payment_total = invoice_total
Where invoice_id = 2;


-- to prevent this, we should use the WITH CHECK OPTION on creating the view
CREATE OR REPLACE VIEW invoices_with_balance AS
    SELECT 
        invoice_id,
        number,
        client_id,
        invoice_total,
        payment_total,
        invoice_date,
        (invoice_total - payment_total) AS balance,
        due_date,
        payment_date
    FROM
        Invoices
    WHERE
        (invoice_total - payment_total) > 0
WITH CHECK OPTION;


-- Will fail to execute for the reason we mentioned previously
Update invoices_with_balance 
SET
	payment_total = invoice_total
Where invoice_id = 3;