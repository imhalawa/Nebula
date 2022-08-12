 -- Get all indexes on a table
 SHOW INDEXES IN customers;
 
 /*
	- By default the primary key is indexed (clustered-index) 
    - every-table can have only one clustered-index.
    
    - other indexes are called secondary indexes (non-clustered indexes)
    - column_name: the column that index is based on.
    - Collation: the sorting mechanism (A-> Ascending, Descending)
    - Cardinality: estimated number of unique values e.g. {A,B,C,A,D,A,B,C,C,B} -> {A,B,C,D}
    - Index_type: BTREE -> Binary tree (shows the datastrucure used to build the index)
 */
 
 -- Get more accurate value for Cardinality using Analyze command
 ANALYZE TABLE customers;
 
 -- Get Indexes in orders table
 SHOW INDEXES IN orders;
 
 -- whenever we create a relationship between two tables, an index is being created automatically based on the FKs.
 -- why it does that? to quickly join our tables.
 -- 
 