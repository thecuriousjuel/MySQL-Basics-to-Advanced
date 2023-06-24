SELECT 
    invoice_id,
    invoice_total,
    
    (SELECT AVG(invoice_total)
    FROM invoices) AS invoice_average,
    
    invoice_total-(SELECT AVG(invoice_total)
    FROM invoices) AS difference
    
FROM
    invoices; 
    
