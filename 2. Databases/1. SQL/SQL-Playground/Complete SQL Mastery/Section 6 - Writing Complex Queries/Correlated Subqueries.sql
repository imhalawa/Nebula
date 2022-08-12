-- Select Employees whose salary is above the average in their office
Use sql_hr;


-- the subquery is dependenant on it's parent
-- Correlated SubQuery, reference from the outer query
Select e.*
FROM employees e
Where e.salary > 
(
Select AVG(salary)
FROM employees 
	where office_id = e.office_id
);

-- Exercise
-- Get Invoices that are larger than the client's average invoice amount

Use sql_invoicing;

Select * 
From Invoices i
Where i.invoice_total > (
	Select AVG(invoice_total)
    FROM invoices
    Where i.client_id = client_id
);