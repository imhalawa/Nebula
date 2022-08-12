-- Perform Calculations on a date time values
-- It works similar to extract function
-- Add 1 Day
Select
  Date_Add(Now(), Interval 1 day) as nextDay;
-- Add 1 year
Select
  Date_Add(Now(), Interval 1 Year) as NextYear;
-- Subtract 1 Year
Select
  Date_Sub(Now(), Interval 1 Year) as PreviousYear;
  
-- Get the Difference between 2 Dates
Select ABS(DateDIFF('2019-01-05','2019-01-10'));

-- Convert Time to Seconds
Select Time_To_SEC('01:00');

-- Convert Time to Seconds
Select Time_To_SEC('09:00') - Time_To_SEC('09:00:35');