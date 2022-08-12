Use sql_store;

Select customer_id from customers where state='CA';

-- Get Execution plan for the previous query
EXPLAIN Select customer_id from customers where state='CA';
-- type (ALL -> Full-table scan) (
-- rows (Total rows that has been scanned to get the result) (the little rows the better)


CREATE INDEX idx_state ON customers (state);

-- Get Execution plan for the previous query
EXPLAIN Select customer_id from customers where state='CA'; -- rows has been Signficantly reduced.