# ค้ำคูณโปรดักชั่นเฮาส์ — Production Web Portal

เว็บไซต์ประชาสัมพันธ์และแสดงผลงานของค้ำคูณโปรดักชั่นเฮาส์ พัฒนาด้วย Nuxt 4, Vue 3, TypeScript และ Tailwind CSS

## ความต้องการ

- Node.js 22 หรือรุ่นที่โปรเจกต์รองรับ
- npm ที่มาพร้อม Node.js
- Docker และ Docker Compose (สำหรับรันด้วย container)

## ติดตั้งและรันในโหมดพัฒนา

```bash
npm ci
npm run dev
```

เปิด `http://localhost:3000`

## ตรวจสอบและ build สำหรับ production

```bash
npm run build
npm run preview
```

## รันด้วย Docker Compose

```bash
docker compose up --build -d
```

เปิด `http://localhost:3000` และดู log ด้วย `docker compose logs -f nuxt`

หยุดบริการด้วย `docker compose down`

## โครงสร้างสำคัญ

- `app/pages/` — หน้าแรก บริการ ผลงาน เกี่ยวกับเรา และติดต่อเรา
- `app/components/` — ส่วนประกอบ Vue ที่ใช้ซ้ำ รวมถึงแกลเลอรีผลงานและ modal วิดีโอ
- `app/data/` — ข้อมูลบริการและผลงานที่ใช้ร่วมกันระหว่างหน้า
- `app/types/` — TypeScript types ของข้อมูลสื่อ
- `public/imgs/` — ภาพและ thumbnail ของเว็บไซต์

## หมายเหตุ

ข้อมูลบริการและผลงานถูกแยกเป็นโมดูลกลางเพื่อลดการซ้ำซ้อน หน้าผลงานทั้งหน้าแรกและหน้า `/portfolio` ใช้คอมโพเนนต์แสดงผลงานชุดเดียวกัน
