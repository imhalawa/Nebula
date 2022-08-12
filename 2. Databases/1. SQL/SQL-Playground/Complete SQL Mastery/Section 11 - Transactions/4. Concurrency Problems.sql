/*
	Problem 1: Lost Updates
	- Lost Updates: happens when two transactions are trying to update the same data. (assuming we don't use locks)
	= in this case the transaction that commits later will override the changes made by the pervious transactions.

		-- Scenario (locking disabled): Assuming we have two transactions that occur in the same time:
		-- first transaction: attempting to update the points of the customer. (but it has not commited yet)
		-- second transaction: attempting to update the state of the customer. (has been commited)
		-- result: changes made by the first transaction will be lost!

		-- How to avoid this problem? USING Locks (Run Synchronously)

	Problem 2: Dirty Reads
	- Dirty Reads: happens when a transaction reads a data that has not been commited yet. (Breaks Consistency increasingly)
    = 
    
		-- Scenario : Assuming we have two transactions that occur in the same time:
		-- First transaction: attempting to update the points of the customer. (but it has not commited yet)
		-- Second transaction: attempting to read the points of the customer. (in the middle of transaction A execution)
			-- Plot twist: first transaction does rollback changes!
			-- Result: second transaction has read data that never existed also make decisions upon that! (Dirty Data)

		-- How to avoid this problem? 
			= Provide a Level of Isolation around the transactions (READ COMMITTED)
            = so data changed by the first transaction is not immediately visible to the second transaction, unless it's commited.
			- (READ COMMITTED) ISOLATION LEVEL enforce the transaction to only read committed data.
            
		-- But what if the data has been changed after the second transaction read the data?
			= It doesn't really matters, what matters is that the data we read is committed at the moment of reading.
            = So if you made a business decision, you'd rather base this decision on a valid committed data!



	Problem 3: Non-Repeating Reads
    - Non-Repeating Reads: is when we read something twice and you get different results.
	= 
		-- Scenario : Assuming we have two transactions that occur in the same time:
		-- first transaction: reads customer's points, and it find it to be 10 (not done yet (committed/rolledback).
		-- second transaction: update the points for this customer to 0.
        -- first transaction: reads the customer's points again for some reason and it found to be 0.
			(so first transaction read the points twice and it was different within same transaction)
		-- result: there is no consistency within the same transaction reads!
        
     -- How to avoid this problem?    
        = We would increase the ISOLATION Level for first transaction, that it doesn't actually see the changes made by the second transaction 
		= (REPEATABLE READ) ISOLATION LEVEL: ensures the consistency of data reads even if it has been modified by another transactions.
	
    
    
    Problem 4: Phantom Reads
    - Non-Repeating Reads: is when we read something twice and you get different results.
	= 
		-- Scenario : Assuming we have two transactions that occur in the same time:
		-- first transaction: Reads all the customers who have points greater than 10 (perhaps gonna send them discount code)
		-- second transaction: Updates the points for another customer that was not returned by the query in the first transactions.
		-- result: so this customer is not eligible for this discount code, however it mets the criteria! ( A Phantom (Ghost) Read)
		-- Notes It's the inverse of Lost Updates problem.
        
	 -- How to avoid this problem? (Only if it absolutely critical to include all eligible customers)
		= Only if it absolutely critical to include all eligible customers, we need to ensure that there are not running transaction that will impact the query to find the eligible customers.
        = (SERIALIZABLE) ISOLATION LEVEL:  will gurantee that the current read transaction is aware of the other transaction (that will affect records) been made by other transactions to the data.
        = For example, if the second transaction is updating someone now (which will somehow affect the records), this isolation level will enforce the first transaction to wait for it!
	- notes: (SERIALIZABLE) is the highest level of isolation levels that give the certainty in our operations. (CAN HURT Performance and scalability)
		x - it comes with a cost! that the more concurrent transactions we have the more we have to wait!
*/

-- NOTE THAT innodb_table_locks is enabled
 SHOW variables LIKE '%lock%';
 
 
 
 
 