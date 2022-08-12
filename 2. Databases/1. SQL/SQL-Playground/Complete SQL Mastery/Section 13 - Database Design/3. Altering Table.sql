-- USE Alter to modify existing schema of the database
ALTER TABLE customers
	-- you add multiple columns
	ADD last_name VARCHAR(50) NOT NULL AFTER `first_name`,
    ADD city 	  VARCHAR(50) NOT NULL,
    
	-- you can also modify a column (type, attributes, ...)
    MODIFY COLUMN first_name varchar(55) DEFAULT '',
    
    -- DANGER: you can also drop a column
    DROP points;
    