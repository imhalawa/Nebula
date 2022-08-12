-- why would you do this? becuase auditing growth rate might be too large and it would make it time-consuming to query these things later.
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;


Delimiter $$
-- Execute it once
CREATE EVENT yearly_delete_stale_audit_rows
	ON Schedule
	EVERY 1 YEAR starts curdate() ends ADDDATE(curdate(), INTERVAL 1 YEAR)
DO BEGIN
	 DELETE FROM payments_audit pa
     WHERE pa.action_date < SUBDATE(curdate(), INTERVAL 1 YEAR); -- removing audit data older than 1 YEAR
END$$

Delimiter ;