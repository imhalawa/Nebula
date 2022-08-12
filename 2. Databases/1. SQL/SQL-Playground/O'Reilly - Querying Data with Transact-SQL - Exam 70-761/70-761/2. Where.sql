USE AdventureWorks2018;

-- Filter the Result using Where Clause
SELECT FirstName,
       LastName
FROM Person.Person
WHERE LastName = 'Adams'
      AND FirstName = 'Alex';
