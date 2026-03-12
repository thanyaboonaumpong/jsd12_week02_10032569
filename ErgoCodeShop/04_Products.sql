-- 04_Products
TRUNCATE TABLE Products RESTART IDENTITY CASCADE;
INSERT INTO Products (product_id, name, description, price, category) VALUES
(1, 'ErgoPro-X1 Mesh', 'Premium 4D adjustable mesh chair for long-working hours', 15900.00, 'Ergonomic Chair'),
(2, 'ComfortBack-Z Leather', 'Genuine leather chair with lumbar support', 18500.00, 'Ergonomic Chair'),
(3, 'Minimalist Air-Flow', 'Simple and breathable design for home office', 8900.00, 'Ergonomic Chair'),
(4, 'Active Stool-Y', 'Stool for active sitting to improve core muscles', 5500.00, 'Active Sitting'),
(5, 'Adjustable Footrest', 'Ergonomic footrest with adjustable height', 1200.00, 'Accessory'),
(6, 'Single Monitor Arm', 'Gas-spring monitor arm for eye-level viewing', 2500.00, 'Accessory'),
(7, 'Memory Foam Lumbar', 'Medical grade memory foam for back support', 1500.00, 'Accessory'),
(8, 'Maintenance Kit', 'Cleaning kit for wheels and gas lift', 450.00, 'Maintenance');