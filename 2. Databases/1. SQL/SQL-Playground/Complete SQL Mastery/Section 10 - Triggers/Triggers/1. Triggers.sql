/*
Triggers 
----------------------
A block of SQL code that automatically gets executed before or after insert, update or delete statement.

-- Usage of triggers
--------------------
- It's mostly used to enforce data consistency.
- It can also be used for auditing.


- Some of the DBMS Also supports table level triggers that fires only one.
- Use NEW keyword to access the newly inserted row in that table.
- Important NOTE: for any trigger you create for table X, you cannot apply CRUD(-R) operations on it. otherwise, it will ran into infinite loop.
- NOTE: CUD operations does fail if the trigger fails.
*/
DROP TRIGGER IF EXISTS payments_after_insert;

Delimiter $$
CREATE Trigger payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW -- what the fuck (intensive query)
Begin
	-- type your sql here
	Update invoices
    SET payment_total = payment_total + NEW.amount
	WHERE invoice_id = NEW.invoice_id;

End$$
Delimiter ;