-- ล้างข้อมูลเดิมเพื่อให้ ID เริ่มนับ 1 ใหม่
TRUNCATE TABLE Components RESTART IDENTITY CASCADE;

-- เพิ่มข้อมูลอะไหล่เก้าอี้สุขภาพ (Mock Data)
-- หมายเหตุ: supplier_id ต้องตรงกับที่เราใส่ไว้ในตาราง Suppliers
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