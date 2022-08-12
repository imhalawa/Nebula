/*
Highest Performance
-------------------------------------
|	 - READ UNCOMMITTED (FASTEST Query, MORE Concurrency problems)
|    - READ COMMITTED  
					--> the two above could be used for 
						- bulk reporting, where you don't need consistency 
                        - dealing with data that's rarely updated. 
                        - to achieve a better performance.
                        
|    - REPEATABLE READ (Default ISOLATION LEVEL, works well for most scenarios)
|    - SERIALIZABLE (Higher Consistency, Lower Performance)
-------------------------------------
DECREASED Performance & SCALABILITY 
*/

-- get the current isolation level
SHOW VARIABLES LIKE '%transaction_isolation%'; 

-- Change the isolation level

-- 1. set the isolation level for the next transaction
SET TRANSACTION ISOLATION LEVEL serializable;

-- 2. set the isolation level for all future transactions in the current session/connection
SET SESSION TRANSACTION ISOLATION LEVEL serializable;

-- 3. set the isolation level globally for all future transactions in all sessions.
SET GLOBAL TRANSACTION ISOLATION LEVEL serializable;
	-- If you are a application developer, you've a function or method somewhere in your application that connects to the database and executes a given transaction
    -- or maybe you're using an ORM or directly connect to mysql
    -- in this case always change the isolation level for the current session, and then run the transaction.
    -- noting that you will always close the connection (ending the session) which turns to optimal use for application level.

