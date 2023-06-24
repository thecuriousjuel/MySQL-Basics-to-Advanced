SELECT 
    client_id,
    name,
    SUM(invoice_total) AS total_sales,
    (SELECT 
            AVG(invoice_total)
        FROM
            invoices) AS average,
    (SELECT SUM(invoice_total) - average) AS difference
FROM
    invoices
RIGHT JOIN clients
    USING (client_id)
GROUP BY client_id;