-- ล้างข้อมูลเดิมเพื่อให้ ID เริ่มนับ 1 ใหม่
TRUNCATE TABLE OrderItems RESTART IDENTITY CASCADE;

-- 1. ออเดอร์ที่ 1: ลูกค้าซื้อเก้าอี้รุ่น ErgoPro-X1 (15,900.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1); -- ซื้อ ErgoPro-X1 จำนวน 1 ตัว

-- 2. ออเดอร์ที่ 2: ลูกค้าใจดี ซื้อ ErgoPro-X1 ไปใช้ 2 ตัว (31,800.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(2, 1, 2); 

-- 3. ออเดอร์ที่ 3: ซื้อเก้าอี้หนัง ComfortBack-Z (18,500.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(3, 2, 1);

-- 4. ออเดอร์ที่ 4: ซื้อรุ่นมินิมอล Minimalist Air-Flow (8,900.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(4, 3, 1);

-- 5. ออเดอร์ที่ 5: ซื้อเก้าอี้สตูล Active Stool-Y (5,500.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(5, 4, 1);

-- 6. ออเดอร์ที่ 6: ซื้อแขนจับจอ Single Monitor Arm (2,500.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(6, 6, 1);

-- 7. ออเดอร์ที่ 7: ซื้อรุ่น Minimalist Air-Flow 2 ตัว (17,800.-)
-- หมายเหตุ: ยอดนี้จะตรงกับ 8,900 * 2
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(7, 3, 2);

-- 8. ออเดอร์ที่ 8: ซื้อ ErgoPro-X1 เพิ่มอีก 1 ตัว (15,900.-)
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(8, 1, 1);