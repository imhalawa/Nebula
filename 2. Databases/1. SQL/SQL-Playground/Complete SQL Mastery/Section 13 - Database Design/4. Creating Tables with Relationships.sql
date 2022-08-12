CREATE DATABASE IF NOT EXISTS sql_store2;

USE sql_store2;


-- They are in order because they have dependenceis (FKs) and you have to start dropping the leaves. (tables that has no dependencies)
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

CREATE TABLE  Customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    points INTEGER NOT NULL DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Orders
(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    
    -- Setting Up a Foreign Key
    FOREIGN KEY `fk_orders_customers` (customer_id)
		REFERENCES customers(customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);