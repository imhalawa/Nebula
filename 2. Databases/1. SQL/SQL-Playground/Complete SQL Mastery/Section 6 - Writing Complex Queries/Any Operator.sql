-- Select clients with at least two invoices

-- Using Join
SELECT 
    c.*
FROM
    clients c
        JOIN
    (SELECT 
        client_id, COUNT(*) AS total_invoices
    FROM
        invoices
    GROUP BY client_id
    HAVING total_invoices >= 2) AS filtered_clients ON filtered_clients.client_id = c.client_id;


 -- Using In Operator   
    SELECT 
    *
FROM
    clients
WHERE
    client_id IN (SELECT 
            client_id
        FROM
            invoices
        GROUP BY client_id
        HAVING COUNT(*) >= 2);
        

-- Using Any Operator
SELECT 
    *
FROM
    clients
WHERE
    client_id = ANY (SELECT 
            client_id
        FROM
            invoices
        GROUP BY client_id
        HAVING COUNT(*) >= 2);