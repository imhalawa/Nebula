/*
	Character SET and Collations
    ----------------------------
	- When i store a value like `abc` , MYSQL will store the Numerical Representation for each character.
    - And the Character set is a table that maps each character to it's numerical representation.
    - E.g. Character Set for Asian Languages, ... 
    - DEFAULT Character Set is `utf8` which supports most of the international languages.
    - COLLATION defines how a character set is sorted. 'ci -> case insensitive'
    
    - You'd want to change the character set to reduce the size of your database.
    - Character set can be set for specific columns, tables, or entire database
*/

-- Get all supported charset in MYSQL
SHOW CHARSET;
	-- MaxLen -> how many bytes for each character
    
-- Changing the Character Set for databases
CREATE DATABASE db_name
	CHARACTER SET latin1;
ALTER DATABASE db_name
    CHARACTER SET `latin1`;
   
-- Changing the Character Set for tables
-- CREATE TABLE table1 
-- (
-- 	...
-- )
-- CHARACTER SET latin1

-- ALTER table1 CHARACTER SET latin1;




    