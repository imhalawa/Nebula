-- The Actual Products 
SELECT ProductID
  FROM Production.Product;

-- OrderDetails 
SELECT ProductID
  FROM Production.WorkOrder
 ORDER BY ProductID;



-- GET All Ordered Products 
SELECT ProductID
  FROM Production.Product
INTERSECT
SELECT ProductID
  FROM Production.WorkOrder
 ORDER BY ProductID;

-- GET All Un-Ordered Products 
SELECT ProductID
  FROM Production.Product
EXCEPT
SELECT ProductID
  FROM Production.WorkOrder
 ORDER BY ProductID;
