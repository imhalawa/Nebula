/*
	Indexing for high performance
    Indecies are important in large databases and high traffic websites because they can improve the performance of our queries.
    
    - indexes speed up our queries
    - 

	Indexes are basically data structures that database engines use to quickly find data.
    
    Think of it as a telephone directory, in a telephone directory we can quickly lookup someone's phone number.
    because contacts are sorted by their Lastname and FirstName

	We don't have to go through every contact in the directory, database management systems use indexes to find data in a similar way.
    
	Indexes are created per column. 
    Indexes stores the sorted data and references to the records in the customers table.
    
    Indexes are small enough that they can fit into a memory, which is another factor of improving the speed dramatically.
    
    COST of Creating Indexes
    ---
    
    - Increase the size of the databases. (because they have to be permanantly stored next to our tables)
    - Slow down the writes.	(every time you update the record, the engine has to update the corresponding indexes)
 
	Reserve Indexes for performance critical queries (Don't just index every column in your database)
    Meaning you've to created indexes when the need arise.
    
    
    Indexes Datastructure
    ---------------------
    - Indexes are stored as binary trees.
    - 

	

*/