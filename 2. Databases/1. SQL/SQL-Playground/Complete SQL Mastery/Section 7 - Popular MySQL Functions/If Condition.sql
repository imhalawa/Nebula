-- IF (expression, value_if_true, value_if_false)

Select 
	order_id,
    order_date,
	IF(Year(order_date) = Year(NOW()), 'Active','Archived') as Status
From Orders;

-- Exercise
-- the following solution is not correct, because it returns a product that has never been ordered
Select 
	product_id,
    name,
    (select Count(product_id) from order_items where product_id = p.product_id) as orders,
	IF ((select orders) > 1, 'Many Times',
		IF ((select orders) = 1,'Once','Never')) as frequency
from products p;



Select 
	p.product_id,
    name,
    count(*) as orders,
    IF (count(*) > 1, 'Many Times','Once') as frequency
from products p
Join order_items oi 
	on p.product_id = oi.product_id
group by p.product_id