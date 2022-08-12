-- GET ALL Customers located in Virginia 
SELECT *
FROM customers
WHERE state = 'VA';

-- GET ALL Customers NOT located in Virginia 
SELECT *
FROM customers
WHERE state <> 'VA';

-- GET ALL Customers were bord after January
SELECT *
FROM Customers
Where birth_date > '1990-01-01'