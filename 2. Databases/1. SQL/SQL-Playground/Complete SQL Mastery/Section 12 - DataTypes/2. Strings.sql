/*
	- CHAR(X) For Fixed-Length values, For Example:
		- e.g. Appreviation of States CHAR(2) -> 'A' is not valid, 'AB' is valid
		- It expects the same number of characters for each value, cannot be less, should be equal.
        
    - VARCHAR(X) --> Prefered over Text because it can be INDEXED (Speed Up Queries)
		- e.g. Storing usernames, passwords, emails, ....
        - Length of value can be equal or less.
        - As a Best Practice VARCHAR(50) -> Short Strings, VARCHAR(255) -> for medium-length strings.
        
        - NOTES: Max possible length for varchar is 65,535 (~64kb)
        - Stroing anything longer than specified length will truncate the rest of characters.
        
	- MEDIUMTEXT 
		- Max Possible Length 16 Million Characters (~16MB)
        - Good for storing JSON Objects, CSV Strings, ... 
        
	- LONGTEXT
		- Max Possible Length 16 Million Characters (~4GB)
        - Storing textbox (In a word processor), Years of Log files.
        - 
        
	- TINYTEXT
		- Max 255 bytes
	
    - TEXT
		- MAX 64KB

All of these types support international characters:
	- English Character -> 1 Byte
    - European and Middle-eastern Character -> 2 Bytes
    - ASIAN (Chinese, Japanese) -> 3 Bytes
    
*/