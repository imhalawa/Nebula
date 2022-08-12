USE AdventureWorks2018;
SELECT FirstName 'First __ Name',
       LastName 'Last :+: Name'
FROM Person.Person
WHERE LastName = 'Adams'
      AND FirstName = 'Alex';
