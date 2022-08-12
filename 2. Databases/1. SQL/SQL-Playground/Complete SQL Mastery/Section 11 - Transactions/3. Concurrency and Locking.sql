/*
- In a real-world case, one or multiple users will try to access the data at the same time.
- Problem? concurrency becomes problem when a used is modifying the data that another user is trying to retrieve.
- So how does MySQL handles concurrency by default?
- How to minimize concurrency problems?

- MySQL doesn't allow immediate Update for two concurrent session, the last will wait (QUEUE) untill the first has done commiting or rolling back the transaction.

- Use this session along with 3.1 concurrency and locking - session 2 and execute it command by command (ctrl+enter) but don't commit! (one of them should show a spinner)
*/


USE sql_store;

START TRANSACTION;
	UPDATE customers 
	SET 
		points = points + 10
	WHERE
		customer_id = 1;
commit;	