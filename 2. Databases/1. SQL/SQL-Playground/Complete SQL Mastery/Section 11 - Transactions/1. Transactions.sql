/*
Transaction is a group of SQL statements that represents a single unit of work.
- (Yes) it's not a conicedense that a transaction is somehow related to the UnitOfWork Concept.

- All the statements must be completed successfully or the transaction will fail (All Succeed or All fails)
- Why? because we always wanna perserve the consistency between tables.

- For example, Bank Transaction From Account A To Account B
	1. Withdraw from the Account A (UPDATE)
    2. Audit Withdrawal from Account A	(INSERT in AUDIT)
    3. Deposite into B	(UPDATE)
    4. Audit Deposite into B (INSERT in AUDIT)
    
- Transactions Requires ACID Principles
	- Atomicity: transactions are like atoms, they are unbreakable that every transaction is a signle unit of work no matter how many statements it contains.
    - Consistency: with this transactions our database will alawys remain in a consistent state.(e.g. you won't end up with order without an item)
    - Isolation: these transaction are isolated or protected from each other if they tried to modify the same data. they cannot interfer with each other. (SQLSERVER ISOLATION LEVELS)
		- If for example multiple transaction are attempting to update the same record at the same time, it will be locked to one of them and the rest can wait until it's done!
    - Durability: Once a transaction is committed changes made by the transaction is permanent, so if you have a power failure or a system crash you're not gonna lose the changes.
*/

