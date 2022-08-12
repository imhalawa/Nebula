-- Global variables (Session Scoped)

-- Variables in SQL are objects that are used to store a single  value in memory
-- Variables names are prefixed with @ character
-- Variables are mostly used with stored_procedure to retain the output of OUT Parameters
-- Important NOTE: Variables are kept life in memory during the entire client session 
SET @invoices_count = 0;

-- So it can be used to retain output from a Stored Procedure and pass it to another one


-- Local variable (Stored Procedure or Function Scoped)
-- DECLARE <var_name> <typ> DEFAULT <default_value>
-- NOTE that DEFAULT keyword is optional