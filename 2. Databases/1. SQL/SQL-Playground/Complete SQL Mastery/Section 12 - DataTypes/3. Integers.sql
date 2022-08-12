/*
 - Store non-float point numbers, Integers only.
 - Vary from one type to another

	- TINYINT	1byte [-128,128]
    - UNSIGNED TINYINT 1byte [0,255]
    - SMALLINT 2byte [-32k, 32k]
    - MEDIUMINT 3byte [-8M, 8M]
    - INT 4byte [-2B,2B]
    - BIGINT 8byte [-9Z,9Z]

- Just google them, don't memorize
- NOTE: Attempting to store larger value in a record with a type that cannot hold it, MYSQL will through an exception indicating that it does exceed that range.


- Numeric numbers has another attribute called (ZEROFILL) which is good for situation where you want to always have the same length of digits.
- You can specify a length of numbers e.g. INT(4) -> 0001 alter
- However it only affects the way it displays it, not how it get stored.

- BP: Use the smallest data type that suits your needs always. (for performance, and storage)
*/