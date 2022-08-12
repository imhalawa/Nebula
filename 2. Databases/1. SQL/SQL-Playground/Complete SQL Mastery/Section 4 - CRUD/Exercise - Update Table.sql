Use sql_store;

-- Using Where 
Update customers c
Set 
	c.points = c.points + 50
Where 
	c.birth_date < '1990-01-01';
    

-- Select Them
Select * from customers c
Where c.birth_date < '1990-01-01'

   
