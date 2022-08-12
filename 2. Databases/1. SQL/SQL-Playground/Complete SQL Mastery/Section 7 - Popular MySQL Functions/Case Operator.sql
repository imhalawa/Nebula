-- Case Operator
-- Useful for Multiple Expressions conditions
Select 
	order_id,
    order_date,
    CASE 
		WHEN Year(order_date) = Year(NOW()) THEN 'ACTIVE'
        WHEN Year(order_date) = DATE_Sub(NOW(), Interval 1 Year) THEN 'Last Year'
        WHEN Year(order_date) < DATE_Sub(NOW(), Interval 1 Year) THEN 'Archived'
		ELSE 'FUTURE'
	END as category
From Orders;

-- Exercise
Select 
 Concat(first_name,' ',last_name) as customer,
 points,
 CASE
	WHEN points > 3000 THEN 'GOLD'
    WHEN points <= 3000 AND points >2000 THEN 'SILVER'
    WHEN points <= 2000 THEN 'BRONZE'
 END as category
From customers
order by points DESC;