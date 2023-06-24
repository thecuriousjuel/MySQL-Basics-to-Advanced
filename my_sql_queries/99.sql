
SELECT *
FROM invoices
WHERE invoice_total > 
            (SELECT MAX(invoice_total)
            FROM invoices
            WHERE client_id=3);



            
