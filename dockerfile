# =========================
# 1️⃣ STAGE 1: Build stage
# =========================
FROM node:20-alpine AS builder


WORKDIR /app

# คัดลอกไฟล์ package.json และ lock file
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกโค้ดทั้งหมดเข้ามา
COPY . .

# Build โปรเจกต์ Nuxt (จะได้ไฟล์ใน .output/)
RUN npm run build


# =========================
# 2️⃣ STAGE 2: Production stage
# =========================
FROM node:20-alpine AS runner

# ตั้ง working directory
WORKDIR /app

# คัดลอกเฉพาะ output จาก build stage
COPY --from=builder /app/.output ./.output

# ตั้งค่าพอร์ตที่ Nuxt ใช้ (ค่าเริ่มต้นคือ 3000)
EXPOSE 3000


# คำสั่งรันแอป (ใช้ nitro)
CMD ["node", ".output/server/index.mjs"]
