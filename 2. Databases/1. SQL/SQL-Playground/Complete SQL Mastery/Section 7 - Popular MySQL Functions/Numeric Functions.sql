-- Numeric (DateTime, StringValues) Functions

-- Round
select round(5.73234);    -- Round Up to 6
select round(5.23234);    -- Round Down to 5
select round(5.93234, 2); -- 2 represents the number of digits after the floating-point

-- Truncate
select truncate(5.73234, 2);  -- Will keep only 2 digits after the floating point

-- Cieling
select ceiling(5.2); -- Round Up to 6

-- Floor
select floor(5.2); -- Round Down to 6


-- Absolute
select ABS(-5.6); -- Get the Absolute value of a number

