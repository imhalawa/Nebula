/*
 Parameters are used for two usage:
	-  Pass a value to the stored procedure
	-  Return values to the calling application
*/


DROP Procedure IF EXISTS get_clients_by_state;

Delimiter $$
Create Procedure get_clients_by_state
(
	-- Parameter list
	state CHAR(2) -- VARCHAR
)
Begin
	Select * from clients c
    where c.state = state;
End$$

-- Testing my SQL Statement
call get_clients_by_state('NY');