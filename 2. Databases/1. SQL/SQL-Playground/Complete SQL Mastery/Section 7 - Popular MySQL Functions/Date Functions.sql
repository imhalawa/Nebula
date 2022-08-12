-- Get Current Date & time
Select Now();

-- Get Current Date without time
Select curdate();

-- Get Current Time without date
Select curtime();

-- ----> Extracting Info from a date

-- Get Year of a datetime object
Select YEAR(NOW());

-- Get Month of a datetime object
select Month(Now());

-- this works as well (dunno how!)
select Month(curdate());
select Month(curtime()); 

-- Get Day of a datetime object
select Day(Now());

-- Get Hour of a datetime object
select hour(Now());

-- Get Minute of a datetime object
select Minute(Now());

-- Get Second of a datetime object
select Second(Now());

-- Get the Day of the week as a string
select DayName(Now());

-- Get the MonthName 
select MonthName(Now());

-- Extract Function, Query the DateTime Object
Select extract(year from now());
Select extract(month from now());
Select extract(day from now());