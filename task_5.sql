USE alx_book_store;

UPDATE customers
SET customer_id = 1, customer_name = 'Cole Baido', email = 'cbaidoo@sandtech.com', address = '123 Happiness Ave.'
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Customers' ;