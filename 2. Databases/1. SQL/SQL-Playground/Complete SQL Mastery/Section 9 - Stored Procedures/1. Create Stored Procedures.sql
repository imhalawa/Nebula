-- Change the default delimiter
-- DELIMITER <any_character> 
-- most of sql developers use $$

-- We use DELimiter to tell sql engine to treat the Stored Prodcedure as one unit.

DELIMITER $$
Create procedure get_clients()
Begin
	Select * From clients;
End$$

-- reset delimiter, not necessary for SQL_SERVER
DELIMITER ;


