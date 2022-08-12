-- USE Alter to modify existing schema of the database
ALTER TABLE customers
	-- you add multiple columns
	ADD last_name VARCHAR(50) NOT NULL AFTER `first_name`,
    ADD city 	  VARCHAR(50) NOT NULL,
    
	-- you can also modify a column (type, attributes, ...)
    MODIFY COLUMN first_name varchar(55) DEFAULT '',
    
    -- DANGER: you can also drop a column
    DROP points;
    
-- Will fail because foreign keys are created with a different a name that i've specified.
ALTER TABLE orders
    DROP PRIMARY KEY, -- no need to specify the column name on dropping the PKs
	ADD PRIMARY KEY (order_id),
	DROP FOREIGN KEY orders_ibfk_1,
    ADD FOREIGN KEY fk_orders_customers (customer_id)
			REFERENCES customers (customer_id)
            ON UPDATE CASCADE
            ON DELETE NO ACTION