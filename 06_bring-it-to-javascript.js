// ==========================================
// 🛒 ErgoCode Shop - Business Entities in JS
// ==========================================

// 1. String สำหรับชื่อสินค้า (Product Name)
const productName = "ErgoCode: Zero-Bug Edition";

// 2. Number สำหรับราคาสินค้า (Price)
const productPrice = 12900;

// 3. Boolean สำหรับเช็คสถานะว่ามีของไหม (inStock)
const isInStock = true;

// 4. Array สำหรับรายการสินค้าหรือตัวเลือก (List of products/options)
const availableColors = ["Matte Black", "Space Grey", "White Mesh"];
const availableWheels = ["PU Silent", "Standard Nylon"];

// 5. Object สำหรับข้อมูลเก้าอี้ 1 ชิ้น (One Product)
const ergoChair = {
  productId: "PRD-001",
  name: productName,
  price: productPrice,
  inStock: isInStock,
  features: ["Dynamic Lumbar Support", "4D Armrests", "Breathable Mesh"]
};

// 6. Array of Objects สำหรับตะกร้าสินค้า (Shopping Cart)
// เวลาน้องจอยกดเลือกสีและล้อใส่ตะกร้า ข้อมูลจะหน้าตาแบบนี้ค๊ะ:
const shoppingCart = [
  {
    productId: "PRD-001",
    productName: "ErgoCode: Zero-Bug Edition",
    customColor: "Space Grey",  // ลูกค้าคัสตอมสี
    customWheel: "PU Silent",   // ลูกค้าคัสตอมล้อ
    quantity: 1,
    subtotal: 12900
  }
];

// 7. Object สำหรับใบสั่งซื้อ 1 ใบ (One Order)
const userOrder = {
  orderId: "ORD-9999",
  customerName: "Joy (Junior Web Dev)",
  items: shoppingCart, // ดึงตะกร้าสินค้ามาใส่ในออเดอร์
  totalAmount: 12900,
  paymentMethod: "PromptPay",
  status: "Processing"
};

// ลองให้ระบบแสดงผล (Console log)
console.log("Cart Data:", shoppingCart);
console.log("Order Details:", userOrder);