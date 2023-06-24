SELECT * FROM sql_invoicing.invoices;

CREATE VIEW sales_by_client AS
SELECT 
    c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM invoices AS i
JOIN clients AS c
    USING (client_id)
GROUP BY c.client_id, c.name
ORDER BY total_sales;

