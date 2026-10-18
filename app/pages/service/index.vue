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

  <!-- SERVICES PRICES Section -->
    <section class="pb-16 bg-gray-50 font-sans">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      
      <!-- Header Section -->
      <div class="text-center max-w-3xl mx-auto mb-16" data-aos="fade-up">
        <h2 class="text-3xl md:text-4xl font-bold text-primary mb-4">ค่าบริการ</h2>      
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">บริการของค้ำคูณ โปรดักชั่น</h2>
        <p class="text-gray-600 leading-relaxed">
          ครอบคลุมการผลิตสื่อและบันทึกภาพอย่างครบวงจร โดยมีรายละเอียดแพ็กเกจและอัตราค่าบริการให้พิจารณาตามความเหมาะสมของสเกลงาน ดังนี้ครับ
        </p>
      </div>

      <!-- Pricing Cards -->
             <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 items-stretch">
        
        <!-- Option A -->
        <div class="bg-white rounded-lg border border-gray-200 p-8 flex flex-col hover:shadow-lg transition-shadow">
          <div class="text-center mb-6">
            <h3 class="text-sm font-semibold text-gray-500 uppercase tracking-wider mb-2">Option A</h3>
            <div class="text-xl font-bold text-gray-900 mb-2">แพ็กเกจถ่ายภาพนิ่ง</div>
            <div class="text-4xl font-bold text-gray-900 my-4">฿13,000</div>
          </div>
          <ul class="space-y-4 flex-1 mb-8">
            <li v-for="(feature, index) in optionAFeatures" :key="index" class="flex items-start">
              <svg class="w-5 h-5 text-primary mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
              <span class="text-gray-600 text-sm">{{ feature }}</span>
            </li>
            <!-- Add-on -->
            <li class="flex items-start mt-4 pt-4 border-t border-gray-100">
              <svg class="w-5 h-5 text-primary mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path></svg>
              <span class="text-gray-600 text-sm">บริการเสริม: ถ่ายแล้วรับภาพทันทีผ่าน QR Code <br/><span class="text-primary font-semibold">+฿6,000</span></span>
            </li>
          </ul>
          <!-- <UButton color="primary" variant="solid" class="w-full justify-center py-2.5 rounded-lg transition-all group-hover:bg-opacity-90">เลือกแพ็กเกจนี้</UButton> -->
        </div>

        <!-- Option B -->
        <div class="bg-white rounded-lg border border-gray-200 p-8 flex flex-col hover:shadow-lg transition-shadow">
          <div class="text-center mb-6">
            <h3 class="text-sm font-semibold text-gray-500 uppercase tracking-wider mb-2">Option B</h3>
            <div class="text-xl font-bold text-gray-900 mb-2">แพ็กเกจวิดีโอไฮไลท์</div>
            <div class="text-4xl font-bold text-gray-900 my-4">฿20,000</div>
          </div>
          <ul class="space-y-4 flex-1 mb-8">
            <li v-for="(feature, index) in optionBFeatures" :key="index" class="flex items-start">
              <svg class="w-5 h-5 text-primary mr-3 flex-shrink-0 bg-blue-50 rounded-full" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
              <span class="text-gray-600 text-sm">{{ feature }}</span>
            </li>
          </ul>
          <!-- <UButton color="primary" variant="solid" class="w-full justify-center py-2.5 rounded-lg transition-all group-hover:bg-opacity-90">เลือกแพ็กเกจนี้</UButton> -->
        </div>

        <!-- Option C -->
        <div class="bg-white rounded-lg border border-gray-200 p-8 flex flex-col hover:shadow-lg transition-shadow">
          <div class="text-center mb-6">
            <h3 class="text-sm font-semibold text-gray-500 uppercase tracking-wider mb-2">Option C</h3>
            <div class="text-xl font-bold text-gray-900 mb-2">แพ็กเกจถ่ายทอดสด</div>
            <div class="text-3xl font-bold text-gray-900 my-4">฿20K - 45K</div>
          </div>
          <ul class="space-y-4 flex-1 mb-8">
            <li v-for="(feature, index) in optionCFeatures" :key="index" class="flex items-start">
              <svg class="w-5 h-5 text-primary mr-3 flex-shrink-0 bg-blue-50 rounded-full" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
              <span class="text-gray-600 text-sm">{{ feature }}</span>
            </li>
          </ul>
          <!-- <UButton color="primary" variant="solid" class="w-full justify-center py-2.5 rounded-lg transition-all group-hover:bg-opacity-90">เลือกแพ็กเกจนี้</UButton> -->
        </div>

        <!-- Option D (Highlighted / Most Popular) -->
                 <div class="bg-white rounded-lg border-2 border-primary p-8 flex flex-col relative shadow-xl">
          <div class="absolute top-0 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
            <span class="bg-primary text-white text-xs font-bold px-3 py-1 rounded-full uppercase tracking-wide">Most Popular</span>
          </div>
          <div class="text-center mb-6 mt-2">
            <h3 class="text-sm font-semibold text-primary uppercase tracking-wider mb-2">Option D</h3>
            <div class="text-xl font-bold text-gray-900 mb-2">ค้ำคูณ Full Production</div>
            <div class="flex flex-col items-center justify-center my-4">
              <span class="text-gray-400 line-through text-sm mb-1">มูลค่ารวมปกติ ฿65,000</span>
              <span class="text-4xl font-bold text-gray-900">฿60,000</span>
            </div>
          </div>
          <ul class="space-y-4 flex-1 mb-8 border-t border-gray-100 pt-6">
            <li v-for="(feature, index) in optionDFeatures" :key="index" class="flex items-start">
              <svg class="w-5 h-5 text-primary mr-3 flex-shrink-0 bg-blue-50 rounded-full" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
              <span class="text-gray-600 text-sm font-medium">{{ feature }}</span>
            </li>
          </ul>
          <!-- <UButton color="primary" variant="solid" class="w-full justify-center py-2.5 rounded-lg transition-all group-hover:bg-opacity-90">เลือกแพ็กเกจนี้</UButton> -->
        </div>

      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import { serviceItems } from "~/data/services";

const optionAFeatures = [
  'ช่างภาพนิ่ง 2 ท่าน สำหรับเก็บภาพบรรยากาศ',
  'บริการปรับแต่งแสงและสีภาพ',
  'ส่งมอบไฟล์ภาพความละเอียดสูงทั้งหมดผ่าน Google Drive',
]

const optionBFeatures = [
  'ทีมช่างภาพวิดีโอ 2 ท่าน พร้อมอุปกรณ์มืออาชีพ',
  'บริการถ่ายภาพมุมสูงด้วยโดรน (Drone)',
  'ตัดต่อวิดีโอความยาว 3-5 นาที',
  'ใส่โลโก้, กราฟิกข้อความ, และเพลงประกอบลิขสิทธิ์',
  'ส่งมอบไฟล์วิดีโอความละเอียด 4K หรือ Full HD',
]

const optionCFeatures = [
  'ระบบถ่ายทอดสด Multi-Camera (4-8 มุมมอง)',
  'ทีมงานควบคุมระบบไลฟ์ (Director / Switcher)',
  'ระบบเสียงคมชัด เชื่อมต่อตรงจากบอร์ดหน้างาน',
  'บริการขึ้นกราฟิกหน้าจอ (โลโก้, ชื่อ, ภาพสไลด์)',
  'ออกอากาศผ่าน Facebook Page หรือ YouTube',
]

const optionDFeatures = [
  'ครอบคลุมบริการทั้งหมด (ภาพนิ่ง + วิดีโอ + ไลฟ์สด)',
  'จัดเต็มทีมงาน: ภาพนิ่ง, วิดีโอ, โดรน, ควบคุมระบบไลฟ์',
  'ดูแลคิวภาพและเสียงหน้างานอย่างเป็นระบบ',
  'ได้ทั้งงานสตรีมมิงและฟุตเทจสำหรับวิดีโอไฮไลท์ที่สมบูรณ์',
]

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

