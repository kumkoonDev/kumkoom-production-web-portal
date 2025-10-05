<template>
    <section class="py-16 bg-gray-50">
    <div data-aos="fade-up"  class="max-w-7xl mx-auto px-6 lg:px-8">
      <!-- Heading -->
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900">
          บริการของเรา
        </h2>
        <p class="mt-4 text-lg text-gray-600 max-w-2xl mx-auto">
          เรามีบริการด้านสื่อโฆษณา วิดีโอ และการตลาดออนไลน์ครบวงจร
          ที่จะช่วยให้ธุรกิจของคุณเติบโตและเข้าถึงกลุ่มเป้าหมายได้มากขึ้น
        </p>
      </div>

      <!-- Services Grid -->
      <div class="grid gap-8 md:grid-cols-3">
        <!-- Service Card -->
        <div
          v-for="i in 3"
          :key="i"
          class="bg-white rounded-xl shadow hover:shadow-lg transition overflow-hidden flex flex-col"
        >
          <!-- Image -->
          <img
            src="https://cdn.bootstrapstudio.io/placeholders/1400x800.png"
            alt="service"
            class="w-full h-48 object-cover"
          />

          <!-- Content -->
          <div class="p-6 flex-1 flex flex-col">
            <!-- <span class="text-primary text-sm font-medium">บริการ</span> -->
            <h3 class="mt-2 text-xl font-semibold text-gray-900">
              บริการหมายเลข {{ i }}
            </h3>
            <p class="mt-2 text-gray-600 text-sm flex-1">
              อธิบายรายละเอียดของบริการนี้แบบสั้น ๆ
              เพื่อให้ผู้ใช้เข้าใจว่าบริการนี้ช่วยแก้ปัญหาอะไร
              หรือมีประโยชน์อย่างไร
            </p>
          </div>
        </div>
        <!-- End Service Card -->
      </div>
    </div>
  </section>
</template>

<script setup>
</script>

<style scoped>  </style>