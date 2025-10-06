# === Stage 1: Build ===
FROM node:lts-alpine AS builder

# ตั้งค่า Working Directory
WORKDIR /app

# คัดลอกไฟล์ที่จำเป็นสำหรับการติดตั้ง Dependencies
# ใช้ pnpm เป็นตัวอย่าง หากใช้ npm หรือ yarn ให้เปลี่ยนตามความเหมาะสม
COPY package.json ./

# ติดตั้ง Dependencies ในโหมด production เพื่อลดขนาด image
# หากมีการใช้ devDependencies ในระหว่าง build (ซึ่งไม่ควรมีสำหรับ production build ที่ดี) อาจต้องพิจารณา
# แต่โดยทั่วไป Nuxt จะจัดการเรื่องนี้ในการ build
RUN npm install -g pnpm && pnpm install --frozen-lockfile --prod

# คัดลอกไฟล์โปรเจกต์ทั้งหมด
COPY . .

# รัน Nuxt build
# คำสั่งนี้จะสร้างไฟล์ Production Server ที่ .output
RUN pnpm run build

# === Stage 2: Production Runtime ===
FROM node:lts-alpine AS runner

# ตั้งค่า Working Directory สำหรับรันแอปพลิเคชัน
WORKDIR /app

# คัดลอกไฟล์ Production Output จาก Stage 1
# Nuxt build output คือ .output/
COPY --from=builder --chown=nuxtjs:nuxtjs /app/.output ./


# เปิดเผย Port ที่ Nuxt Server จะรัน
EXPOSE 3000

# คำสั่งเริ่มต้นการรัน Production Server
# Nuxt/Nitro Production Server จะรันไฟล์ index.mjs
CMD [ "node", "server/index.mjs" ]