use sql_store;
-- INSERT INTO customers
-- VALUES (DEFAULT, 'John', 'Smith', '1990-01-01','address', 'city', 'CA');

INSERT INTO customers (
first_name,
last_name,
birth_date,
address,
city,
state
)
VALUES (
'John', 
'Smith', 
'1990-01-01',
'address', 
'city', 
'CA'
);