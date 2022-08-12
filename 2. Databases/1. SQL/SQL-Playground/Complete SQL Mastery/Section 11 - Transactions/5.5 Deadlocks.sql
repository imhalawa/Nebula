/*
Deadlocks happen when different transactions cannot complete because each trancsactions holds a lock that the other needs
So both transactions keeps waiting for each other and never release their locks

CONSIDERATIONS
As a application developer you should consider handling deadlocks, or warn the user to retry again.
*/


-- ISOLATION Levels has no power here because we are UPDATING, so the targeted record will be locked.
use sql_store;

START TRANSACTION;
UPDATE CUSTOMERS SET State='VA' WHERE customer_id = 1;
UPDATE Orders SET Status=1 WHERE order_id = 1;
COMMIT;