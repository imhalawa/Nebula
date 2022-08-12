-- Get Length of Characters
SELECT Length('sky');

-- Change string case to Upper Case
Select Upper('Sky');

-- Change string case to Lower Case
select lower('SKY_Crappers');

-- Trimming 
-- LTRIM, trim spaces from the beginning(left) of the character
select ltrim('     sky');

-- RTRIM, trim spaces from the end(right) of the character
select rtrim('sky       ');

-- TRIM, remove leading or trailing spaces
select trim('     sky       ');

-- Substrings
-- LEFT(), Get the first nth characters from a string
select LEFT('Kindergarten',4);


-- Right(), Get the last nth characters from a string
select Right('Kindergarten',6);


-- Substring (value, starting_pos, length_of_substr), Get substring 
select substring('Kindergarten',3,5);

-- Find & Replace functions
-- Locate, find position of first occurence of a character
SELECT Locate('garten','Kindergarten');

-- Replacing substring with another
Select replace('kindergarten','garten','garden');

--  Contactenation
Select Concat('first',' ','middle',' ','last');




