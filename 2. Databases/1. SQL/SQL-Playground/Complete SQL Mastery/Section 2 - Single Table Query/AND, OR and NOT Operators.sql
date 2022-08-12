SELECT *
FROM Customers
WHERE 
	birth_date > '1990-01-01' OR points > 1000
;

SELECT *
FROM Customers
WHERE 
	birth_date > '1990-01-01' OR points > 1000
    AND state = 'VA'
;

-- AND Operator always evaluated first, use ( ) to change precedence

SELECT *
FROM Customers
WHERE 
	(birth_date > '1990-01-01' OR points > 1000)
    AND state = 'VA'
;    
    
-- Negating a Condition
SELECT *
FROM Customers
WHERE 
	NOT (birth_date > '1990-01-01' OR points > 1000)
;

-- Equivalent Expression using DeMorgans Law
SELECT *
FROM Customers
WHERE 
	birth_date <= '1990-01-01' AND points <= 1000