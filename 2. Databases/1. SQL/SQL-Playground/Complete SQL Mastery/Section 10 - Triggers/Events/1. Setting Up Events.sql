/*
EVENTS / Scheduler
-----------------
A task or block of SQL code that gets executed according to a schedule. (like cron job) (e.g. every day, once a month, every quarter, ...)


USAGE
-------------
- Automate database maintainence tasks such as deleting stale data.
- Copying data from one table to an archive table.
- ...
*/



-- First things first, enable mysql scheduler

-- Find the variable for scheduler
SHOW variables LIKE '%scheduler%';
SHOW variables LIKE 'event%';

-- toggle it ON or OFF
SET GLOBAL event_scheduler = OFF; -- disable the scheduler
SET GLOBAL event_scheduler = ON; -- enable the scheduler



-- Creating events

-- Execute it once
/*
CREATE EVENT yearly_delete_stale_audit_rows
	ON SCHEDULE 
		AT 'date'
        
DO Begin

END       
*/

-- Execute it repeatedly 
/*
CREATE EVENT yearly_delete_stale_audit_rows
	ON SCHEDULE 
		Every 'duration' 'HOUR|DAY|WEEK|MONTH|YEAR' STARTS 'date_of_beginning' ENDS 'date_of_ending'
DO Begin

END
*/