-- If Null Assign another value
SELECT 
    order_id, IFNULL(shipper_id, 'Not Assigned') AS shipper_id
FROM
    orders;
  
-- COALESCE, specify a fallback for the null column
SELECT 
    order_id,
    COALESCE(shipper_id, comments, 'Not Assigned') AS Shipper
FROM
    orders;
  
-- same result using nested IFNULL
SELECT 
    order_id,
    IFNULL(shipper_id,
            IFNULL(comments, 'Not Assigned'))
FROM
    orders;