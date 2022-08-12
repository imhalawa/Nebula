/*
	Blobs are used to store images,videos, ... (as a binary format)
    
    - TINYBLOB (255Bytes)
    - BLOB (65KB)
    - MEDIUMBLOB (16MB)
    - LONGBLOB (4GB)
    
    
    Keep your blobs out of the database! 
    Databases are designed to work with structured relational data not binary data.
    
    PROBLEMS with Storing FILES IN A DATABASE
    ---------------------------------------------
    - Increased database size
    - Slower backups
    - Performance problems
    - More code to read/write images
*/