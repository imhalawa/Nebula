use sql_invoicing;

select 
	pm.name as payment_method,
    SUM(p.amount) as total
from  payment_methods pm
join  payments p
	on pm.payment_method_id = p.payment_method
group by pm.name with rollup -- use actual name not an alias
order by total asc