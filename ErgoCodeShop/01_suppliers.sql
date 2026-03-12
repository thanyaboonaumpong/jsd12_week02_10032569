-- ล้างข้อมูลเดิมออกก่อน เพื่อไม่ให้ ID มันซ้อนกัน
TRUNCATE TABLE Suppliers RESTART IDENTITY CASCADE;

-- ใส่ข้อมูลซัพพลายเออร์ที่ส่งอะไหล่เก้าอี้สุขภาพให้เรา
INSERT INTO Suppliers (supplier_id, name, contact_person, phone_number) VALUES
(1, 'Breathable Mesh Factory', 'Somchai Saithakai', '081-222-3333'), -- ส่งผ้าตาข่ายเกรดพรีเมียม
(2, 'Steel & Frame Pro', 'Ms. Iron Steel', '082-444-5555'),      -- ส่งโครงเหล็กและฐานเก้าอี้
(3, 'Smooth Rollers Co.', 'Mr. Wheelie Swift', '083-666-7777');    -- ส่งล้อเก้าอี้แบบไม่ทำลายพื้นไม้