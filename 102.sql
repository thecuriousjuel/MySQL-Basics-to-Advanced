SELECT
    customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE c.customer_id IN 
            (SELECT customer_id
            FROM orders o
            WHERE o.order_id IN 
                    (SELECT order_id 
                    FROM order_items oi
                    WHERE oi.product_id = 3));