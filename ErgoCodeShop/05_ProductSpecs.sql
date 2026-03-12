TRUNCATE TABLE ProductSpecs RESTART IDENTITY CASCADE;

-- 1. สูตรการประกอบรุ่น ErgoPro-X1 Mesh (item_id 1)
INSERT INTO ProductSpecs (product_id, component_id, quantity_used) VALUES
(1, 1, 1.5), -- ใช้ Premium Mesh 1.5 เมตร
(1, 3, 1.0), -- ใช้ Steel Frame 1 โครง
(1, 4, 2.0), -- ใช้ 4D Armrest 2 ข้าง
(1, 5, 1.0), -- ใช้ Gas Lift 1 แท่ง
(1, 6, 1.0), -- ใช้ ล้อ 1 เซต (5 ล้อ)
(1, 10, 0.1); -- ใช้ สกรูประมาณ 1 ใน 10 กล่อง

-- 2. สูตรการประกอบรุ่น ComfortBack-Z Leather (item_id 2)
INSERT INTO ProductSpecs (product_id, component_id, quantity_used) VALUES
(2, 2, 2.0), -- ใช้ Fabric/Leather 2 เมตร
(2, 3, 1.0), -- ใช้ Steel Frame 1 โครง
(2, 5, 1.0), 
(2, 6, 1.0),
(2, 8, 1.0); -- เพิ่มหมอนรองหลัง Lumbar Support 1 ใบ

-- 3. สูตรการประกอบรุ่น Adjustable Footrest (item_id 5)
INSERT INTO ProductSpecs (product_id, component_id, quantity_used) VALUES
(5, 7, 1.0), -- ใช้ฐาน Nylon
(5, 10, 0.05); -- ใช้สกรูนิดหน่อย