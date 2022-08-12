USE sql_store;

START TRANSACTION; -- marking the beginning of the transaction

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2022-01-01', 1);

INSERT INTO order_items 
VALUES (LAST_INSERT_ID(), 1,1,1);

-- for situation where you wanna do manual checking and also rollback changes we use ROLLBACK keyword
ROLLBACK;


-- NOTE[It happens by default in mysql] mysql wrapps every single statement we write inside a transaction and then it will do a commit if that statement didn't return an error
-- this feature is controlled using a variable called auto_commit
SHOW VARIABLES LIKE '%commit%';