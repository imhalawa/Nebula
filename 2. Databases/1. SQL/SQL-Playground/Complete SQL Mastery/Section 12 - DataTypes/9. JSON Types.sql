/*

	JSON 
    ----------
    
    - Lightweight format for storing and transforming data over the internet.
    - 

	USE CASES
    ----------------
    - Having a key/value pair of additional properties for a record.
    - 

*/


Update products 
SET properties = JSON_OBJECT(
	'wieght',10,
    'dimensions',JSON_ARRAY(1,2,3),
    'manufacturer',JSON_OBJECT('name','sony')
)
WHERE product_id =1 ;

-- Extract Data from a json object
-- $ is a pointer to the current object/document
SELECT product_id,JSON_EXTRACT(properties,'$.wieght') as weight
FROM products
WHERE product_id = 1;


-- Extract using a column path operator
SELECT product_id,properties ->'$.wieght' as weight
FROM products
WHERE product_id = 1;

-- Extract array using a column path operator
SELECT product_id,properties ->'$.dimensions' as Dimensions
FROM products
WHERE product_id = 1;

-- Extract array values using a column path operator
SELECT product_id,properties ->'$.dimensions[0]' as DimensionX
FROM products
WHERE product_id = 1;

-- Extract nested objects using a column path operator
-- will return string literal 
SELECT product_id,properties ->'$.manufacturer.name' as weight
FROM products
WHERE product_id = 1;

-- Extract nested objects using a column path operator
-- get value without the string literal
SELECT product_id,properties ->>'$.manufacturer.name' as weight
FROM products
WHERE product_id = 1;


-- Filter by Nested data in a JSON Object
SELECT product_id,properties ->>'$.manufacturer.name' as weight
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';


-- Updating Fields within JSON OBJECTS
Update products 
SET properties = JSON_SET(
	properties,
    '$.wieght', 20,
    '$.age',10
)
WHERE product_id =1 ;


Select * From products where product_id =1 ;

-- REMOVE JSON nested object
Update products 
SET properties = JSON_REMOVE(
	properties,
    '$.age' -- will be removed
)
WHERE product_id =1 ;

Select * From products where product_id =1 ;