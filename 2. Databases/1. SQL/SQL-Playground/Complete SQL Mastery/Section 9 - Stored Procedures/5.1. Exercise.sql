DROP Procedure IF EXISTS get_invoices_by_client;

Delimiter $$
Create Procedure get_invoices_by_client
(
client_id_param int
)
Begin
Select * from invoices where client_id = client_id_param;
End$$
Delimiter ;

call get_invoices_by_client(3);