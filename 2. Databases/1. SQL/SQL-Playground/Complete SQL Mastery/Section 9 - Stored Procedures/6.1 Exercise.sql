DROP Procedure IF EXISTS get_payments;

Delimiter $$
Create Procedure get_payments
(
	client_id int,
    payment_method_id tinyint
)
Begin
	Select *
    FROM payments p
    WHERE p.client_id= IFNULL(client_id, p.client_id) AND payment_method = IFNULL(payment_method_id, p.payment_method);
END $$



-- TESTs
call get_payments(NULL,NULL); -- get all
call get_payments(5,NULL);	  -- get payment for client with id =5
call get_payments(NULL,1);	  -- get all payments with payment_method_id = 1

