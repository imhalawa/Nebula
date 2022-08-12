/*
In a real world case you'd be creating a central place for auditing, maybe a separate db.
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

	-- Audit changes
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'INSERT', curdate());

End$$
Delimiter ;