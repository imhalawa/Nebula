Select customer_id from customers where points > 1000;

Explain Select customer_id from customers where points > 1000; -- Scanned Rows 8013

CREATE INDEX idx_points ON customers(points);


Select customer_id from customers where points > 1000;

Explain Select customer_id from customers where points > 1000; -- Scanned Rows 4189