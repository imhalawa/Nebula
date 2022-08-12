USE AdventureWorks2018;

SELECT * FROM dbo.PivotTest;

-- Group By 
SELECT SalesID,CustID,SUM(Qty) TotalQty
FROM dbo.PivotTest
GROUP BY SalesID, CustID

-- PIVOTING Using Standard T-SQL
SELECT SalesID, 
	SUM(CASE WHEN CustID = 'A' THEN Qty END) AS A,
	SUM(CASE WHEN CustID = 'B' THEN Qty END) AS B,
	SUM(CASE WHEN CustID = 'C' THEN Qty END) AS C,
	SUM(CASE WHEN CustID = 'D' THEN Qty END) AS D
FROM dbo.PivotTest
GROUP BY SalesID




-- But, How to Pivot? 
SELECT SalesId, A,B,C,D
FROM(
SELECT SalesID,CustID,Qty
FROM dbo.PivotTest
) AS dt
PIVOT (SUM(Qty) FOR CustID IN (A,B,C,D)) AS pv