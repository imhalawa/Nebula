USE sql_hr;

-- USE Self Join to Select each employee with thier manager
SELECT 
	e.first_name as Employee, 
	m.first_name as Manager
FROM employees e
Join employees m
ON e.reports_to = m.employee_id