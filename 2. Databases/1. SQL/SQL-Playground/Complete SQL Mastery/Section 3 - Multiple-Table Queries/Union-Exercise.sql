use sql_store;

Select customer_id, first_name, points, "Bronze" as type
From customers
Where points < 2000
UNION
Select customer_id, first_name, points, "Silver" as type
From customers
Where points between 2000 AND 3000
UNION
Select customer_id, first_name, points, "Gold" as type
From customers
Where points > 3000
Order By first_name;




-- < 2000 then Bronze
-- < 2000 > 3000 Silver 
-- > 3000 then GOLD
-- Order by first_name