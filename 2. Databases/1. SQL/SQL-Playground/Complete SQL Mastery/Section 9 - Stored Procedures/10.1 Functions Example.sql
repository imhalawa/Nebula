DROP FUNCTION IF EXISTS get_risk_factor_for_client;

Delimiter $$

CREATE FUNCTION get_risk_factor_for_client
(
	client_id INT
)
RETURNS DECIMAL(9,2) 
READS SQL DATA 
BEGIN

	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
    DECLARE invoices_total INT;
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(i.invoice_total)
    INTO invoices_count,invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;

	SET risk_factor = invoices_total / invoices_count * 5;

RETURN coalesce(risk_factor,0);
END$$

Delimiter ;