-- ล้างข้อมูลเดิมเพื่อให้ ID เริ่มนับใหม่
TRUNCATE TABLE Staff RESTART IDENTITY CASCADE;

-- เพิ่มข้อมูลพนักงานในร้าน ErgoCodeShop
INSERT INTO Staff (staff_id, first_name, last_name, role) VALUES
(1, 'สมชาย', 'สายให้คำปรึกษา', 'Sales Consultant'),      -- ช่วยลูกค้าเลือกเก้าอี้ที่เหมาะกับสรีระ
(2, 'สมหญิง', 'ช่างจัดสรีระ', 'Ergonomics Specialist'), -- เชี่ยวชาญด้านการปรับท่านั่ง
(3, 'วิชัย', 'นักประกอบเทพ', 'Assembly Technician'),   -- ช่างเทคนิคประกอบและซ่อมแซมเก้าอี้
(4, 'มานี', 'คุมคลังสินค้า', 'Warehouse Manager');       -- ดูแลสต็อกเก้าอี้และอะไหล่ตาข่าย