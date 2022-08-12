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
	-- Set Defaults
	IF state IS NULL THEN 
		SET state = 'CA'; -- by default return clients in CA
	END IF;
    SELECT * FROM clients c WHERE c.state = state;
End$$
Delimiter ;


-- Using IF ELSE 
DROP Procedure IF EXISTS get_clients_by_state;

Delimiter $$
Create Procedure get_clients_by_state
(
	-- Parameter list
	state CHAR(2) -- VARCHAR
)
Begin
	-- Set Defaults
	IF state IS NULL THEN 
		Select * from clients;
	ELSE
		SELECT * FROM clients c WHERE c.state = state;
	END IF;
End$$
Delimiter ;


-- Combining the query
DROP Procedure IF EXISTS get_clients_by_state;

Delimiter $$
Create Procedure get_clients_by_state
(
	-- Parameter list
	state CHAR(2) -- VARCHAR
)
Begin
		SELECT * FROM clients c WHERE c.state = IFNULL(state,c.state); -- comparing value to itself
End$$
Delimiter ;












-- Testing my SQL Statement
call get_clients_by_state('NY');
call get_clients_by_state('N');
call get_clients_by_state(); -- will fail
call get_clients_by_state(NULL);