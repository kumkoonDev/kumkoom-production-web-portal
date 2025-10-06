# ---------- BUILD STAGE ----------
FROM node:18-alpine AS builder
WORKDIR /app

# เพิ่มเครื่องมือจำเป็น (optional แต่ช่วยให้ build เสถียรบน alpine)
RUN apk add --no-cache python3 make g++  

# คัดลอกไฟล์ package แล้วติดตั้ง dependencies (clean install)
COPY package*.json ./
RUN npm ci

# คัดลอกซอร์สโค้ดแล้ว build
COPY . .
# หากใช้ ENV เฉพาะตอน build -> กำหนดก่อน run build (optional)
# ENV NUXT_PUBLIC_API_URL=https://api.example.com
RUN npm run build

# ---------- RUNTIME STAGE ----------
FROM node:18-alpine AS runner
WORKDIR /app

# ลดสิทธิ์: ใช้ user node (ไม่รันเป็น root)
USER node

ENV NODE_ENV=production
EXPOSE 3000

# คัดลอกเฉพาะสิ่งที่จำเป็นไปรัน
# เอา package.json เพื่อทำ production install (โดย user node)
COPY --chown=node:node package*.json ./

# ติดตั้งเฉพาะ production deps
RUN npm ci --only=production

# คัดลอกผลลัพธ์การ build จาก builder
COPY --chown=node:node --from=builder /app/.output ./.output
# ถ้ามี public หรือ static folder ให้คัดลอกด้วย (ถ้าใช้)
COPY --chown=node:node --from=builder /app/public ./public

# คำสั่งเริ่มต้น - ใช้ Node รัน Nitro server
CMD ["node", ".output/server/index.mjs"]
