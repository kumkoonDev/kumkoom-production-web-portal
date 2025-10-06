# ✅ 1. ใช้ base image ที่เสถียรกว่า (Debian-based)
FROM node:20-slim AS build

# ✅ 2. ตั้ง working directory
WORKDIR /app

# ✅ 3. คัดลอกเฉพาะไฟล์ที่จำเป็นก่อน (เพื่อ cache layer)
COPY package*.json ./

# ✅ 4. ติดตั้ง build tools และ dependencies ที่ Nuxt ต้องใช้
RUN apt-get update && \
    apt-get install -y python3 make g++ && \
    npm ci && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# ✅ 5. คัดลอกโค้ดทั้งหมดเข้า container
COPY . .

# ✅ 6. ปิดการโหลด font จาก Google ตอน build (กันค้าง)
ENV NUXT_FONT_FALLBACK=true
ENV NODE_ENV=production

# ✅ 7. สร้าง production build
RUN npm run build

# ✅ 8. ใช้ image ขนาดเล็กสำหรับ runtime (multi-stage build)
FROM node:20-slim AS runtime
WORKDIR /app

# คัดลอกเฉพาะไฟล์ที่จำเป็นสำหรับรัน
COPY --from=build /app/.output ./.output
COPY --from=build /app/package*.json ./

# ติดตั้งเฉพาะ production dependencies
RUN npm ci --omit=dev && npm cache clean --force

# เปิด port 3000 (default ของ Nuxt)
EXPOSE 3000

# ✅ 9. คำสั่งเริ่มรันแอป
CMD ["node", ".output/server/index.mjs"]
