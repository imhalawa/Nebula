use sql_store;

Update orders
Set 
	comments = 'Gold'
Where customer_id IN 
(
Select customer_id 
from customers
where points > 3000
)