SELECT DaysToManufacture
  FROM Production.Product;


-- SIMPLE CASE Expression (LIKE A Switch CASE)
SELECT ProductID,
       Name,
       Avaliability = CASE DaysToManufacture
                           WHEN '0' THEN 'Immediate'
                           WHEN '1' THEN 'Two Business Days'
                           WHEN '2' THEN 'Three Business Days'
                           WHEN '3' THEN 'Four Business Days'
                           ELSE 'Verfiy Availability' END
  FROM Production.Product;

-- Searched CASE Expression (LIKE an IF Statement in Any Programming LANG)
SELECT ProductID,
       Name,
       Avaliability = CASE
                           WHEN DaysToManufacture = '0' THEN 'Immediate'
                           WHEN DaysToManufacture > 0
                            AND DaysToManufacture < 4 THEN 'Four Business Days'
                           WHEN DaysToManufacture = 4 THEN 'SIX Business Days'
                           ELSE 'Verfiy Availability' END
  FROM Production.Product;