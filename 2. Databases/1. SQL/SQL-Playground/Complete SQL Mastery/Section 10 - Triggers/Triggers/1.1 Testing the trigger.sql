USE sql_invoicing;

INSERT INTO payments (client_id, invoice_id, date, amount, payment_method)
VALUES (5,3,curdate(),200,1);
