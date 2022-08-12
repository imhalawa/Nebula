DROP PROCEDURE IF EXISTS get_risk_factor

Delimiter $$
Create Procedure get_risk_factor
(

)
Begin
	-- risk_factor = invoices_total / invoices_count * 5
	
    -- Declare Local Variables
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;

    -- Get Invoices Total & invoices Count
    Select COUNT(*), SUM(invoice_total) 
    INTO invoices_count, invoices_total
    FROM Invoices;
     
	-- Assign Results to Risk Factor
	SET risk_factor = invoices_total / invoices_count * 5;

	-- Risk Factor 
    SELECT risk_factor;
    
End$$

Delimiter ;