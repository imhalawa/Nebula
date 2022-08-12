-- Reduce the total payment amount from invoices table

DROP TRIGGER IF EXISTS payments_after_delete;

Delimiter $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
Begin
	UPDATE Invoices 
    SET 
		payment_total = payment_total - OLD.amount
	WHERE invoice_id = OLD.invoice_id;
End$$
Delimiter ;


-- Testing the Trigger
DELETE FROM payments where payment_id = 15;