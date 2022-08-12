-- Functions are similar to stored procedures, but the difference is that functions are only return a single value 
-- they cannot return a result set with multiple rows and columns
-- E.g. Aggregate functions

DROP FUNCTION IF EXISTS <function_name>;

Delimiter $$

CREATE FUNCTION <function_name>
(
	client_id INT
)
RETURNS INT

-- Attributes
DETERMINISTIC
 -- means if you gave this function the same set of values it always gives the same value 
 -- useful in situation where you don't 
 -- Pure function
 
READS SQL DATA 
	-- means that we have select statement that reads some data
MODIFIES SQL DATA 
	-- contains INSERT, UPDATE or DELETE Statement
BEGIN

-- Add your logic here

RETURN 1; -- you should always return a value or equivalent (variable that holds that value)
END$$

Delimiter ;