use AdventureWorks2018;

select lastname +', '+ firstname EmployeeName
from Person.Person
order by firstname desc


select distinct lastname +', '+ firstname EmployeeName
from Person.Person
order by EmployeeName desc

select distinct lastname +', '+ firstname + ' : '+ CONVERT(varchar(5),EmailPromotion) as EmailPromotion
from Person.Person
order by EmailPromotion

-- Concat Function
select distinct Concat(lastname,', ', firstname, ' : ', EmailPromotion)as EmailPromotion
from Person.Person
order by EmailPromotion 


