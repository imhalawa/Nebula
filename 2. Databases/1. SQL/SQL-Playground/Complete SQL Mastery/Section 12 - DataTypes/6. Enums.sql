/*
	Is used to define a pre-set of allowed values. e.g. ('SMALL','MEDIUM','LARGE')
    - ENUM('small','medium','large')
    - You should avoid enums, because:
		- Changing the members of an enums can be expensive (changing 'small' to 'SM' will cause mysql to rebuild the entire table and it's too expensive if you've millions of records)
        - A better approach is to have a separate table called sizes to define sizes
        - Just because they are supported, it doesn't mean that we should use them.

	- SET(...) can accept multiple values as well. (but don't use it)
*/