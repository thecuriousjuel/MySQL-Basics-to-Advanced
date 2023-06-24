SELECT
    CONCAT(first_name, ' ', last_name) AS customer,
    COALESCE(phone, 'Unknown') AS phone
FROM customers;