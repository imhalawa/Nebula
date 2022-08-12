-- Get Events
SHOW EVENTS;

-- DROP Event
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

-- Alter Event: https://dev.mysql.com/doc/refman/8.0/en/alter-event.html

-- disable event
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;

