-- 07_order-item
TRUNCATE TABLE OrderItems RESTART IDENTITY CASCADE;

INSERT INTO OrderItems (order_id, item_id, quantity) VALUES
(1, 1, 1),
(2, 1, 2), 
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 6, 1),
(7, 3, 2),
(8, 1, 1);