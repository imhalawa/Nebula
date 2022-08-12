Use sql_store;

Select *
From orders
Where order_date >= (Select Concat(year(now()),'-','01','-','01'));

Select *
From orders
Where year(order_date) >= year(now())