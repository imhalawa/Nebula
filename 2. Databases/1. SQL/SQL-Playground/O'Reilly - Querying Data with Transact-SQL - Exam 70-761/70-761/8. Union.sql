SELECT FirstName,
       LastName,
       Title,
       EmailPromotion
FROM Person.Person
WHERE
EmailPromotion= 2 AND FirstName LIKE '%steve%'

UNION

SELECT FirstName,
       LastName,
       Title,
       EmailPromotion
FROM Person.Person
WHERE
EmailPromotion= 2 AND FirstName LIKE '%john%'

ORDER BY LastName DESC