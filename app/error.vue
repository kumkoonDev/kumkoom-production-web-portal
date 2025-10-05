<!-- /app/error.vue -->
<template>
  <div class="bg-white min-h-screen flex flex-col items-center justify-center text-center px-6">
    <!-- ไอคอน -->
    <div class="mb-6">
      <Icon icon="mingcute:alert-line" class="w-24 h-24 text-yellow-400 animate-bounce" />
    </div>

    <!-- ข้อความ -->
    <h1 class="text-black text-4xl md:text-5xl font-bold mb-4">เว็บไซต์กำลังปรับปรุง</h1>
    <p class="text-lg text-black mb-8">
      ขอโทษในความไม่สะดวก ขณะนี้เว็บไซต์อยู่ระหว่างการปรับปรุงและจะกลับมาให้บริการเร็วๆ นี้
    </p>

    <!-- ปุ่มกลับหน้าแรก -->
    <NuxtLink
      to="/"
      class="px-6 py-3 bg-yellow-400 text-white rounded-lg font-semibold shadow hover:bg-yellow-300 transition"
    >
      กลับสู่หน้าแรก
    </NuxtLink>
  </div>
</template>

<script setup>
import { Icon } from '@iconify/vue'

const props = defineProps({
  error: Object
})
</script>
