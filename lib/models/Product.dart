import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int? price, id;
  final Color? color;

  Product({
    this.id,
    required this.image,
    required this.title,
    this.price,
    this.color,
    required this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Logitech G213 Prodigy",
      price: 2190,
      description: dummyText,
      image: "assets/images/mobie.png",
  ),
  Product(
      id: 2,
      title: "AndaSeat Kaiser 3",
      price: 16900,
      description: dummyText2,
      image: "assets/images/ch1.png",
  ),
  Product(
      id: 3,
      title: "Logitech G333 In-Ear",
      price: 1690,
      description: dummyText3,
      image: "assets/images/hp1.png",
  ),
  Product(
      id: 4,
      title: "Logitech G Pro X",
      price: 5500,
      description: dummyText4,
      image: "assets/images/hp2.png",
  ),
  Product(
      id: 5,
      title: "HyperX QuadCast S",
      price: 5990,
      description: dummyText5,
      image: "assets/images/mk1.png",
  ),
  Product(
    id: 6,
    title: "Keychron V1",
    price: 3990,
    description: dummyText6,
    image: "assets/images/kb2.png",
  ),
  Product(
      id: 7,
      title: "Ducky One 2 Rosa",
      price: 3290,
      description: dummyText7,
      image: "assets/images/kb3.png",
  ),
  Product(
      id: 8,
      title: "Logitech G ProX Superlight",
      price: 5290,
      description: dummyText8,
      image: "assets/images/m1.png",
  ),
  Product(
      id: 9,
      title: "Samsung Odyssey G3",
      price: 7290,
      description: dummyText9,
      image: "assets/images/mt1.png",
  ),

];
String dummyText =
    "คีย์บอร์ด Logitech G213 Prodigy Gaming Keyboard ราคาระดับเริ่มต้น ไม่สูงมาก ไม่ต่ำมาก น่าจับจองเป็นเจ้าของเมื่อมองว่าเป็นคีย์บอร์ดเล่นเกม \n"
    "ด้วยความสามารถที่ไม่แพ้คีย์บอร์ด Mechanical เหมาะกับผู้ที่มองหาคีย์บอร์ดเล่นเกมหรือคีย์บอร์ดใช้งานที่มีความทนทาน ใช้งานได้อย่างสะดวกสบาย\n"
    '\n'
    'ข้อมูลเชิงเทคนิค\n'
    'Height: 1.30 in (33 mm)\n'
    'Width: 17.80 in (452 mm)\n'
    'Depth: 8.58 in (218 mm)'
    ;
String dummyText2 =
    "สำหรับเก้าอี้เกมมิ่ง Anda Seat Kaiser 3 Series Premium Gaming Chair เป็นซีรีส์อันดับต้นๆของแบรนด์ Anda Seat ที่มีการออกแบบมา\n"
    'หลากหลายขนาดทำให้ผู้ใช้งานสามารถเลือกได้ตามความชอบ สำหรับซีรีส์มีทั้งไซซ์ L และ XL ซึ่งการรองรับน้ำหนักของไซซ์ก็มีความแตกต่างกัน\n'
    '\n'
    'อุปกรณ์ภายในกล่อง\n'
    '1 x เก้าอี้เล่นเกม Anda Seat Kaiser 3 Series Premium\n'
    '1 x หมอนรองคอ\n'
    '1 x เอกสารประกอบการใช้งาน'
;
String dummyText3 =
    "Logitech G333 หูฟังเกมมิ่งอินเอียร์ตัวคุ้ม งานเนี๊ยบ สเปกเยี่ยม พร้อมกับเสียงที่มีคุณภาพ ออกแบบมาเพื่อการเล่นเกมมือถือโดยเฉพาะ\n"
    'จุดเด่นของรุ่นนี้อยู่ที่ไดรเวอร์ขับเสียง 2 ตัว ช่วยให้เสียงของเกมมีมิติและบาลานซ์ที่ดีมากขึ้นขับเสียงได้หนักแน่นเต็มอารมณ์ \n'
    'พร้อมกับทิศทางเสียงที่แม่นยำ นอกจากนี้ยังสวมใส่ง่าย'

;
String dummyText4 =
    "หูฟังเล่นเกม Logitech G Pro X Gaming Headphone เป็นหูฟังเกมมิ่งตัวท็อปสุดจาก Logitech ที่มีพื้นฐาน QC อย่างดีในเรทราคาสมเหตุสมผล\n"
    'โดยเจ้าหูฟังตัวนี้มาพร้อมกับสเปคเสียงคุณภาพสูงและ Original Dynamic Driver ขนาด 50 มม. จาก Logitech \n'
    'ทำให้มันสามารถขับเสียง 7.1 Dolby Surround ได้อย่างยอดเยี่ยมกว่าหูฟังตัวไหนๆ\n'
    '\n'
    'การเชื่อมต่อ\n'
    'เชื่อมต่อแบบมีสายผ่านการ์ดเสียงด้วยพอร์ต USB หรือ เชื่อมต่อแบบมีสายด้วยพอร์ต AUX 3.5 mm.'

;
String dummyText5 =
    "HyperX Quadcast S เป็นไมค์จัดรายการรุ่นพัฒนาจากรุ่นยอดนิยมของ HyperX ที่ไม่มีอะไรเปลี่ยนไปจากเดิมมากนักนอกจากไฟ LED RGB 16.8 ล้านสี\n"
    'ดีไซน์ค่อนข้างเป็นมิตรกับผู้ใช้งานมาก ๆ ไม่ว่าจะเป็นมือเก่าหรือ มือใหม่ เพราะว่าส่วนประกอบสำคัญๆ ของมันไม่ว่าจะเป็น เมาท์กันสั่น หรือฟองน้ำกันลม \n'
    'มีรูปแบบการรับเสียงหรือ Polar Pattern อีก 4 รูปแบบให้ปรับใช้งานโดยรูปแบบต่าง ๆ\n'
    '\n'
    'การเชื่อมต่อ\n'
    'เชื่อมต่อแบบมีสายผ่านการ์ดเสียงด้วยพอร์ต USB หรือ AUX (OUT)'
;
String dummyText6 =
    "คีย์บอร์ด Keychron V1 Mechanical Keyboard จะเป็น Custom Mechanical Keyboard ที่มาพร้อมกับขนาดเลย์เอาท์ยอดนิยมอย่าง 75%\n"
    'และตัวเคสสี Frosted Black ที่เป็นเคสสีใสก็ยังโชว์ความเป็นคีย์บอร์ด RGB ได้อย่างเต็มที่ ถูกใจสายคีย์บอร์ดพลังไฟเป็นที่สุด\n'
    '\n'
    'ข้อมูลเชิงเทคนิค\n'
    'ขนาด (กว้าง) : 148.7 มม.    ขนาด (ยาว) : 328.5 มม.\n'
    'น้ำหนัก : 970 ± 10 กรัม (Fully Assembled Version)\n'
    'การเชื่อมต่อ : Type-C'
;
String dummyText7 =
    'คีย์บอร์ด Ducky One 2 Rosa Special Edition Cow Mechanical Keyboard คีย์บอร์ดขนาด Full size ของค่าย Ducky ที่ดีไซน์ขอบจอใหม่\n'
    'โดยใช้กรอบที่โฉบเฉี่ยวลพร้อมรวมสองสีไว้บนกรอบเพื่อให้เข้ากับสีของคีย์แคปทุกรูปแบบ เชื่อมต่ออินเตอร์เฟซ USB Type-C\n'
    'พร้อมกับขาตั้งคีย์บอร์ดปรับมุมได้ 3 ระดับ และใช้สวิตช์ Cherry MX mechanical switches'

;
String dummyText8 =
    "Logitech G Pro X Superlight Wireless Gaming Mouse เป็นเมาส์ไร้สายจากแบรนด์ Logitech ผู้นำด้านเกมมิ่งเกียร์ที่ได้รับการยอมรับในระดับโลก\n"
    'โดยจุดเด่นของเมาส์รุ่นนี้อยู่ตรงที่น้ำหนักของอุปกรณ์ที่เบาเพียงแค่ 63 กรัมเท่านั้น แบตเตอรี่สามารถใช้งานได้สูงสุดถึง 70 ชั่วโมง ต่อการชาร์จเพียงครั้งเดียว\n'
    'นอกจากนี้ยังใช้การเชื่อมต่อไร้แบบสายด้วยเทคโนโลยี Lightspeed รวมไปถึงติดตั้งเซนเซอร์ที่มีความแม่นยำสูงอย่าง HERO 25K'

;
String dummyText9 =
    'Samsung Odyssey G3 LS24AG320NEXXT 24" VA Gaming Monitor 165Hz จอคอมเกมมิ่งของแบรนด์เกาหลีที่เป็นที่นิยมในไทยอย่าง Samsung\n'
    'สำหรับจอคอมเกมมิ่งนี้มีหน้าจอขนาด 24 นิ้ว ที่ได้ทำการออกแบบดีไซน์เป็นแบบไร้ขอบทั้ง 3 ด้าน เพื่อการรับชมภาพที่เต็มตา เล่นเกมได้อย่างไหลลื่น\n'
    'ภาพไม่กระตุกด้วยอัตรารีเฟรชที่สูงถึง 165Hz และมีอัตราการตอบสนอง 1ms มาพร้อมกับเทคโนโลยี AMD FreeSync Premium\n'
'      ข้อมูลเชิงเทคนิค\n'
'Screen Size (Class) : 24\n'
'Active Display Size (HxV) (mm) : 525.89mm x 295.81mm\n'
'Aspect Ratio : 16:9\n'
'Panel Type : VA'
;