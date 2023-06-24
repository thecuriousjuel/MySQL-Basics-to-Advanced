UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3;

SELECT * FROM invoices_with_balance;