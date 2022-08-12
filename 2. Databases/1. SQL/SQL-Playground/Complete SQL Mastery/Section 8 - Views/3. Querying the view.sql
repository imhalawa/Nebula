use sql_invoicing;

Select *
From sales_by_client
Where total_sales >  500

-- Note that views are similar to the virtual tables, but instead it doesn't store data! 
-- It will query the data each time you attempt to query it from the underlying tables.
