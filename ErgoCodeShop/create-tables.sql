-- 1. ตารางผู้ผลิตอะไหล่/เก้าอี้ (คงเดิมแต่เปลี่ยนชื่อให้ชัดเจน)
CREATE TABLE Suppliers (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_person VARCHAR(255),
    phone_number VARCHAR(20)
);

-- 2. ตารางพนักงาน (คงเดิม)
CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role VARCHAR(50) -- เช่น Sales, Admin, Technician
);

-- 3. ตารางชิ้นส่วน/อะไหล่ (แทน Ingredients)
CREATE TABLE Components (
    component_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL, -- เช่น Breathable Mesh, 4D Armrest
    stock_level DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    unit VARCHAR(50) NOT NULL, -- เช่น Meters, Pieces
    supplier_id INTEGER REFERENCES Suppliers(supplier_id)
);

-- 4. ตารางรุ่นเก้าอี้ (แทน MenuItems)
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL UNIQUE, -- เช่น ErgoPro-X1
    description TEXT, -- ใส่สรรพคุณการรับน้ำหนัก/การปรับระดับ
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50), -- เช่น High-back, Mid-back, Gaming
    warranty_years INTEGER DEFAULT 3 -- เพิ่มพาร์ทประกันสำหรับเก้าอี้สุขภาพ
);

-- 5. ตารางสเปคเก้าอี้ (แทน RecipeItems)
-- บอกว่าเก้าอี้รุ่นนี้ประกอบด้วยชิ้นส่วนอะไรบ้าง
CREATE TABLE ProductSpecs (
    spec_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES Products(product_id),
    component_id INTEGER NOT NULL REFERENCES Components(component_id),
    quantity_used DECIMAL(10, 2) NOT NULL
);

-- 6. ตารางลูกค้า (เพิ่มเข้ามาใหม่)
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    address TEXT
);

-- 7. ตารางการสั่งซื้อ (ปรับให้เชื่อมกับลูกค้า)
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    order_date TIMESTAMP NOT NULL DEFAULT NOW(),
    total_price DECIMAL(10, 2) NOT NULL,
    customer_id INTEGER REFERENCES Customers(customer_id), -- เปลี่ยนจาก staff เป็น customer
    staff_id INTEGER REFERENCES Staff(staff_id) -- พนักงานที่ดูแลเคสนี้
);

-- 8. รายการเก้าอี้ในออเดอร์ (คงเดิมแต่เปลี่ยนชื่อตาราง)
CREATE TABLE OrderItems (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES Orders(order_id),
    product_id INTEGER NOT NULL REFERENCES Products(product_id),
    quantity INTEGER NOT NULL
);