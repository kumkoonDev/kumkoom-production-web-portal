# ---------- BUILD STAGE ----------
FROM node:18-alpine AS builder
WORKDIR /app

RUN apk add --no-cache python3 make g++  
COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

# ---------- RUNTIME STAGE ----------
FROM node:18-alpine AS runner
WORKDIR /app

# ใช้ user ที่ปลอดภัย
USER node
ENV NODE_ENV=production
EXPOSE 3000

# คัดลอกเฉพาะไฟล์ผลลัพธ์ที่จำเป็น
COPY --chown=node:node --from=builder /app/.output ./.output
COPY --chown=node:node --from=builder /app/public ./public

# ✅ ไม่ต้อง npm install ซ้ำ
CMD ["node", ".output/server/index.mjs"]
