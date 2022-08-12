-- Find Products that more 
-- expensive than Lettuce (id = 3)

use sql_inventory;

Select *
From products
where unit_price > (
Select unit_price from products where product_id = 3
);

-- Execution Sequence,
-- 1. SubQueries will be evaluated first
-- 2. the top level query will then execute

-- NOTES
-- We can also write the subqueries in the select clause or the from clause


-- Exercise 
-- In sql_hr database: find employess whose earn more than the average

use sql_hr;

-- 1st get the average
Select AVG(salary) FROM employees;

-- 2nd 
Select *
from employees
Where salary > (Select AVG(salary) FROM employees);



