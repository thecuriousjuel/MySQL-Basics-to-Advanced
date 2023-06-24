SELECT *
FROM invoices;

CREATE VIEW clients_balance AS
SELECT 
    c.client_id,
    c.name,
    SUM(invoice_total - payment_total) AS 'balance'
FROM invoices as i
JOIN clients as c
    USING (client_id)
GROUP BY client_id;
