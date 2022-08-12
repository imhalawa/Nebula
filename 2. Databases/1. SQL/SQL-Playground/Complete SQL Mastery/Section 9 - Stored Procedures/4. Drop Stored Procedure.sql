DROP Procedure IF EXISTS get_clients;

/*
	- Without IF EXISTS the drop statement will fail if the stored procedure doesn't exist!
    - Also it's a good practice to share stored procedures over source control
*/

Delimiter $$
Create Procedure get_clients()
Begin
	Select * from clients;
End $$
Delimiter ;