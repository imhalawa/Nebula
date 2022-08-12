use sql_store;

Select Concat(first_name,' ',last_name) as customer,
		IFNULL(phone,'Unknown') as phone
From customers;