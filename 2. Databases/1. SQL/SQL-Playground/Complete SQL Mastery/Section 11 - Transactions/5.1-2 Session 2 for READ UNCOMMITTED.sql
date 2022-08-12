Use sql_store;

Start Transaction;

Update Customers 
SET Points = 20
WHERE customer_id =1 ;

rollback;