
-- SELECT *
-- FROM clients c
-- LEFT JOIN invoices i
--     USING (client_id)
-- WHERE i.invoice_id IS NULL;


SELECT 
    customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN order_items oi
    USING (order_id)
JOIN customers c
    USING (customer_id)
WHERE oi.product_id = 3
GROUP BY c.customer_id;








