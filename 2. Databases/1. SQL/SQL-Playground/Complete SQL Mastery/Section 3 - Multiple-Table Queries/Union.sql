Use sql_store;
Select 
	o.order_id,
    o.order_date,
    'ACTIVE' as Status
From Orders o
Where o.order_date >= '2019-01-01'
UNION
Select 
	o.order_id,
    o.order_date,
    'Archive' as Status
From Orders o
Where o.order_date < '2019-01-01'
