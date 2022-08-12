DROP Procedure IF Exists make_payment;

/* Parameter Validation */
Delimiter $$
Create Procedure make_payment
(
	invoice_id INT,
    client_id INT,
    payment_amount DECIMAL(9,2),
    payment_date Date,
    payment_method tinyint
)
Begin
	
    -- Validating Negative numbers
	IF payment_amount <= 0 THEN
		Signal SQLSTATE '22003' -- raise exception
			SET message_text = 'Invalid Payment Amount';
	END IF;
    
    
    -- Insert 
	INSERT INTO payments (invoice_id,client_id,amount,payment_method,date) VALUES (invoice_id,client_id, payment_amount,payment_method,payment_date);

	-- Update Invoice
	UPDATE Invoices i
    Set 
		i.payment_total = i.payment_total + payment_amount,
        i.payment_date = payment_date,
        i.client_id = client_id
	Where i.invoice_id = invoice_id;
END$$
Delimiter ;

-- https://www.ibm.com/docs/en/db2-for-zos/11?topic=codes-sqlstate-values-common-error
-- Keep the minimal set of validations in the sql script