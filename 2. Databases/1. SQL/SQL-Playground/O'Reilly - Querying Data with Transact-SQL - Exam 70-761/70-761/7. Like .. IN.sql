USE AdventureWorks2018;

-- Normal Where Filteration
SELECT LastName + ' ' + FirstName
FROM Person.Person
WHERE LastName = 'Adams';

-- Filter using LIKE 

-- Select All Employees where LastName starts with 'A'
SELECT LastName + ' ' + FirstName 
FROM Person.Person
WHERE LastName LIKE 'A%'

-- Select All Employees whos lastname contains 'ber' substring
SELECT LastName + ' ' + FirstName 
FROM Person.Person
WHERE LastName LIKE '%ber%'

-- Select All Employees where LastName starts with 'a' or 'd' or 'g'
SELECT LastName + '-' + FirstName 
FROM Person.Person
WHERE LastName LIKE '[adg]%'
ORDER BY LastName DESC, FirstName ASC

-- Select All Employees where LastName is either 'Adams', 'Jones' or 'Smith' 
-- And						  FirstName Starts with Any Character in range between d-to-f -> d,e,f
SELECT LastName + '_' + FirstName
FROM Person.Person
WHERE LastName IN ('Adams', 'Jones', 'Smith')
AND FirstName LIKE '[d-f]%'