/*
	Types: CHAR, VARCHAR, TEXT,..., BLOB
	- will consume alot of space, but will perform better.
    - smaller indexes are better, because they can fit in memory which can make our searches faster in term of I/O read and write.
    - 
	

*/


CREATE INDEX idx_lastname ON customers (last_name(20)); -- number of character to include in the index.

-- why 20? there is no restriction to the number of characters to include in our index, you've to examine your data so that 
-- indecies would include enough characters to build the index on.
-- note that it does affect the index size, the lower number the bigger index size.


-- Simulating index building
SELECT 
	COUNT(distinct LEFT(last_name,1)), -- 25
    COUNT(distinct LEFT(last_name,2)), -- 175
    COUNT(distinct LEFT(last_name,3)), -- 630
    COUNT(distinct LEFT(last_name,4)), -- 880
	COUNT(distinct LEFT(last_name,5)), -- 966 -> optimal
	COUNT(distinct LEFT(last_name,10)) -- 996 
FROM Customers;
