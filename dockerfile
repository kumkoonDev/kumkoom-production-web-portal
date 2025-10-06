# 1. ใช้ Node.js base image
FROM node:20-alpine

# 2. ตั้ง working directory
WORKDIR /app

# 3. คัดลอกไฟล์ package.json และ lock file ก่อน (เพื่อ cache dependencies)
COPY package*.json ./
RUN npm ci

# 4. ติดตั้ง dependencies
RUN npm install

# 5. คัดลอกโค้ดทั้งหมดเข้า container
COPY . .

# 6. Build แอป Nuxt
RUN npm run build

# 7. กำหนด port ที่ Nuxt จะรัน (ค่า default คือ 3000)
EXPOSE 3000

# 8. คำสั่งเริ่มรัน container
CMD ["npm", "run", "start"]
