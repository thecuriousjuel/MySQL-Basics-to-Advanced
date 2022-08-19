SELECT 
    order_id,
    order_date,
    CASE
        WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
        WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Two Years before'
        WHEN YEAR(order_date) = YEAR(NOW()) - 3 THEN 'Three Years before'
        WHEN YEAR(order_date) <= YEAR(NOW()) - 4 THEN 'Archived'
        ELSE 'Future Orders'
    END AS category
        
FROM
    orders;
    
