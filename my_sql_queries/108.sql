SELECT *
FROM products p
WHERE NOT EXISTS
        (SELECT DISTINCT product_id
        FROM order_items
        WHERE product_id = p.product_id);