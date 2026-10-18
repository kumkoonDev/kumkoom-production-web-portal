<template>
  <!-- SERVICES SECTION -->
  <div class="py-16 bg-gray-50">
    <div data-aos="fade-up" class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900">
          บริการของเรา
        </h2>
        <p class="mt-4 text-lg text-gray-600 max-w-2xl mx-auto">
          เรามีบริการด้านสื่อโฆษณา วิดีโอ และการตลาดออนไลน์ครบวงจร
          ที่จะช่วยให้ธุรกิจของคุณเติบโตและเข้าถึงกลุ่มเป้าหมายได้มากขึ้น
        </p>
      </div>

      <div class="flex flex-wrap justify-center gap-8">
        <div v-for="data in serviceItems" :key="data.id"
          class="bg-white rounded-xl shadow hover:shadow-lg transition overflow-hidden flex flex-col w-full sm:w-[calc(50%-1rem)] md:w-[calc(50%-1.33rem)]"
          style="max-width: 384px">
          <NuxtImg :src="data.image" alt="" class="w-full h-54 object-cover" loading="lazy" />

          <div class="p-6 flex-1 flex flex-col">
            <h3 class="mt-2 text-xl font-semibold text-gray-900">
              {{ data.title }}
            </h3>
            <p class="mt-2 text-gray-600 text-sm flex-1">
              {{ data.description }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { serviceItems } from "~/data/services";

useHead({
  title: "บริการของเรา | ค้ำคูณโปรดักชั่นเฮาส์",
  meta: [
    {
      name: "description",
      content: "บริการผลิตวิดีโอ ถ่ายภาพนิ่ง ตัดต่อ Post-Production งานอีเวนท์ ไลฟ์สด และสื่อประชาสัมพันธ์ครบวงจร",
    },
  ],
});
</script>

