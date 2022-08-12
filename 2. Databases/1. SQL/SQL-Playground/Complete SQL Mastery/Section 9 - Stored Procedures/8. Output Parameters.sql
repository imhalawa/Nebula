-- we can use parameters to return values to the calling program
Drop Procedure IF Exists get_unpaid_invoice_for_client;

Delimiter $$
Create Procedure get_unpaid_invoice_for_client
(
	client_id int, -- Input Parameter
    OUT invoices_count int, -- Output parameter
    OUT invoices_total Decimal(9,2) -- Output Parameter
)
Begin
	Select COUNT(*), SUM(Invoice_total) 
    INTO invoices_count, invoices_total -- Important to map actual output to output parameters
    
    FROM Invoices i
    Where i.payment_total = 0 AND i.client_id = client_id;
END$$
Delimiter ;



-- Query Tests
set @invoices_count = 0;
set @invoices_total = 0;
call sql_invoicing.get_unpaid_invoice_for_client(3, @invoices_count, @invoices_total);
select @invoices_count, @invoices_total;
