-- 01_suppliers.
TRUNCATE TABLE Suppliers RESTART IDENTITY CASCADE;
INSERT INTO Suppliers (supplier_id, name, contact_person, phone_number) VALUES
(1, 'Breathable Mesh Factory', 'Somchai Saithakai', '081-222-3333'), -- ส่งผ้าตาข่ายเกรดพรีเมียม
(2, 'Steel & Frame Pro', 'Ms. Iron Steel', '082-444-5555'),      -- ส่งโครงเหล็กและฐานเก้าอี้
(3, 'Smooth Rollers Co.', 'Mr. Wheelie Swift', '083-666-7777');    -- ส่งล้อเก้าอี้แบบไม่ทำลายพื้นไม้

-- 02_staff
TRUNCATE TABLE Staff RESTART IDENTITY CASCADE;
INSERT INTO Staff (staff_id, first_name, last_name, role) VALUES
(1, 'สมชาย', 'สายให้คำปรึกษา', 'Sales Consultant'),      -- ช่วยลูกค้าเลือกเก้าอี้ที่เหมาะกับสรีระ
(2, 'สมหญิง', 'ช่างจัดสรีระ', 'Ergonomics Specialist'), -- เชี่ยวชาญด้านการปรับท่านั่ง
(3, 'วิชัย', 'นักประกอบเทพ', 'Assembly Technician'),   -- ช่างเทคนิคประกอบและซ่อมแซมเก้าอี้
(4, 'มานี', 'คุมคลังสินค้า', 'Warehouse Manager');       -- ดูแลสต็อกเก้าอี้และอะไหล่ตาข่าย

-- 03_Material
TRUNCATE TABLE Components RESTART IDENTITY CASCADE;
INSERT INTO Components (component_id, name, stock_level, unit, supplier_id) VALUES
(1, 'Premium Breathable Mesh', 500, 'meters', 1),   -- จากโรงงานตาข่าย
(2, 'Standard Grey Fabric', 300, 'meters', 1),     -- จากโรงงานตาข่าย/ผ้า
(3, 'Heavy-Duty Steel Frame', 100, 'units', 2),    -- จากโรงงานโครงเหล็ก
(4, '4D Adjustable Armrest', 200, 'units', 2),     -- จากโรงงานชิ้นส่วนโครงสร้าง
(5, 'Class 4 Gas Lift Cylinder', 150, 'units', 2), -- โช้คเก้าอี้จากโรงงานโครงเหล็ก
(6, 'Silent PU Wheels (Set of 5)', 400, 'sets', 3), -- ล้อลื่นจากโรงงานล้อ
(7, 'Nylon Star Base', 120, 'units', 3),           -- ฐานเก้าอี้จากโรงงานชิ้นส่วนจิปาถะ
(8, 'Lumbar Support Cushion', 80, 'units', 1),     -- หมอนรองหลัง
(9, 'Headrest Attachment', 100, 'units', 2),       -- ที่รองศีรษะ
(10, 'Stainless Steel Screws Box', 50, 'boxes', 3); -- กล่องสกรู

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

-- 05_ProductSpecs

-- 1. สูตรการประกอบรุ่น ErgoPro-X1 Mesh (item_id 1)
TRUNCATE TABLE ProductSpecs RESTART IDENTITY CASCADE;
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

-- 5.5_Customers (ต้องมีลูกค้าก่อนถึงจะสั่งซื้อได้ค๊ะ!)
TRUNCATE TABLE Customers RESTART IDENTITY CASCADE;

INSERT INTO Customers (customer_id, first_name, last_name, email, address) VALUES
(1, 'Niti', 'Developer', 'niti@ergocode.com', '123 Coding Street, Bangkok'),
(2, 'Somsak', 'Richman', 'somsak@email.com', '456 Furniture Lane, Nonthaburi'),
(3, 'Jane', 'Doe', 'jane.doe@email.com', '789 Minimalist Rd, Samut Prakan'),
(4, 'John', 'Smith', 'john.s@email.com', '321 Ergonomic Ave, Pathum Thani'),
(5, 'Aria', 'Stark', 'aria.s@email.com', '555 Winterfell St, Chiang Mai');

-- 06_orders.
TRUNCATE TABLE Orders RESTART IDENTITY CASCADE;
-- Mock Data สำหรับการสั่งซื้อเก้าอี้สุขภาพ
-- หมายเหตุ: ราคาต้องสอดคล้องกับรุ่นเก้าอี้ (เช่น ErgoPro-X1 ราคา 15,900)
-- รูปแบบ: (order_id, order_date, total_price, customer_id, staff_id)
INSERT INTO Orders (order_id, order_date, total_price, customer_id, staff_id) VALUES
(1, '2026-03-01 10:30:00', 15900.00, 1, 1), -- ลูกค้า ID 1 ซื้อ ErgoPro-X1 (พนักงานสมชายดูแล)
(2, '2026-03-01 11:15:00', 31800.00, 2, 1), -- ลูกค้า ID 2 ซื้อ 2 ตัว (พนักงานสมชายดูแล)
(3, '2026-03-02 14:00:00', 18500.00, 3, 2), -- ลูกค้า ID 3 ซื้อ ComfortBack-Z (พนักงานสมหญิงดูแล)
(4, '2026-03-02 15:45:00', 8900.00, 1, 2),  -- ลูกค้าคนเดิมกลับมาซื้อรุ่น Minimalist เพิ่ม
(5, '2026-03-03 09:00:00', 5500.00, 4, 1),  -- ลูกค้าใหม่ซื้อ Active Stool
(6, '2026-03-03 16:20:00', 2500.00, 2, 3),  -- ซื้อแขนจับจอ Monitor Arm (พนักงานวิชัยดูแล)
(7, '2026-03-04 11:00:00', 17400.00, 5, 2), -- ซื้อรุ่น Minimalist 2 ตัว
(8, '2026-03-05 13:10:00', 15900.00, 3, 1); -- ซื้อ ErgoPro-X1 เพิ่ม

-- 07_order-item
TRUNCATE TABLE OrderItems RESTART IDENTITY CASCADE;

-- เปลี่ยนจาก product_id เป็น item_id ทุกจุดเลยนะค๊ะ!
INSERT INTO OrderItems (order_id, item_id, quantity) VALUES
(1, 1, 1),
(2, 1, 2), 
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 6, 1),
(7, 3, 2),
(8, 1, 1);

--Run
SELECT name, price, category, warranty_years 
FROM Products 
ORDER BY price DESC;