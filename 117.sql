SELECT *,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'

UNION

SELECT *,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01';


SELECT 
    order_id,
    order_date,
    IF(YEAR(order_date) < YEAR(NOW()),
        'Archived',
        'Active') AS status
FROM
    orders;
    

