SELECT *
FROM Customers
WHERE state = 'VA' OR state= 'GA' OR state = 'FL';


SELECT *
FROM Customers
WHERE state IN ('VA','GA','FL');
