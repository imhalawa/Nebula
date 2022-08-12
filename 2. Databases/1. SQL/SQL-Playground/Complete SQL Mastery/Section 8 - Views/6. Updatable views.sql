-- Updatable Views (Do CRUD Operations on Views) (INSERT, UPDATE, DELETE)
-- Yes the view behaves like an interface to one or more tables, but we can however do crud operations.
-- To make an updatable view, we need to ensure that it doesn't contain the following keywords.
-- 1. Group By or Aggregate functions
-- 2. Distinct
-- 3. Union

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
        
        
-- Update date using views        
Update invoices_with_balance 
SET 
	due_date = date_add(due_date, Interval 2 day)
Where invoice_id = 1;


-- Insert data into a view
-- this will only works if the view has all the record columns that exists in the underlying table
-- But it might work if we only skipped the nullable columns in the table.
-- Also security and permission might prevent this operation

-- do not know why it's not working, stating that it's not insertable into table!
INSERT INTO invoices_with_balance (invoice_id, number, client_id, invoice_total, payment_total, due_date, payment_date)
Values (19,12,5,35,25, '2022-03-15','2022-02-22');
