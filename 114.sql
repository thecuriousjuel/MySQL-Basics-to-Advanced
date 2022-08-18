SELECT 
    order_id,
    IFNULL(shipper_id, 'Not Assigned') AS shipper,
    comments
FROM orders;
