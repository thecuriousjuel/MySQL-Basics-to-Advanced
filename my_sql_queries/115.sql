SELECT 
    order_id,
    COALESCE(shipper_id, comments, 'Not Assigned') AS shipper
FROM orders;