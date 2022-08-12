-- The Ordinary Select Statement for Listing Products ==> Returns 504 rows
SELECT ProductID,
       Name,
       ProductNumber,
       ListPrice
  FROM Production.Product
 ORDER BY Name ASC;

-- PAGING
SELECT ProductID,
       Name,
       ProductNumber,
       ListPrice
  FROM Production.Product
 ORDER BY Name ASC
-- PAGING, Starts @ Page 0
OFFSET 0 ROWS FETCH NEXT 15 ROWS ONLY;

-- PAGING
SELECT ProductID,
       Name,
       ProductNumber,
       ListPrice
  FROM Production.Product
 ORDER BY Name ASC
-- PAGING, Starts @ Page 0
OFFSET 15 ROWS FETCH NEXT 15 ROWS ONLY;

-- PAGING
SELECT ProductID,
       Name,
       ProductNumber,
       ListPrice
  FROM Production.Product
 ORDER BY Name ASC
-- PAGING, Starts @ Page 0
OFFSET 30 ROWS FETCH NEXT 15 ROWS ONLY;


-- PAGING
SELECT ProductID,
       Name,
       ProductNumber,
       ListPrice
  FROM Production.Product
 ORDER BY Name ASC
-- PAGING, Starts @ Page 0
OFFSET 30 ROWS FETCH NEXT 15 ROWS ONLY;