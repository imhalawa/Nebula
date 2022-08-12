-- Inserting Hierarchical data (Parent-child) relationship
INSERT INTO orders (customer_id, order_date, status)
VALUES 
(1, '2022-01-01', 2);

-- Once we insert this row, mysql engine will create an id for that row. but we do need to access
-- that id even before it has been executed. (Assuming it will execute successfully)

-- Solution is to use the Built In Function called LAST_INSERT_ID()
SELECT LAST_INSERT_ID();

INSERT INTO order_items
VALUE 
	(LAST_INSERT_ID(), 1,1,2.95),
    (LAST_INSERT_ID(), 2,1,3.95),
    (LAST_INSERT_ID(), 3,1,4.95),
    (LAST_INSERT_ID(), 4,1,5.95);


