use sql_store;

-- Get Customers from Virginia who spent more than 100$
select 
	 c.first_name,
     c.last_name,
	 Sum(oi.unit_price * oi.quantity) as total_sales
from order_items oi
join orders o on o.order_id = oi.order_id
join customers c on o.customer_id = c.customer_id
where c.state='VA'
group by  
    o.customer_id
Having total_sales > 100