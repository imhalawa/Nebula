-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

-- Formatting Date
Select Date_Format(Now(),'%D %M %Y');

-- Formatting 
Select time_format(Now(), '%H:%i %p');