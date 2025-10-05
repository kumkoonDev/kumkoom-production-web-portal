<template>
     <section class="py-16 bg-white">
    <div data-aos="fade-up"  class="max-w-7xl mx-auto px-6 lg:px-8">
      <!-- Heading -->
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900">
          ผลงานของเรา
        </h2>
        <p class="mt-4 text-lg text-gray-600 max-w-2xl mx-auto">
          ตัวอย่างผลงานที่เราได้ทำให้กับลูกค้าในหลายอุตสาหกรรม
          เพื่อสร้างคุณค่าและความแตกต่างที่แท้จริง
        </p>
      </div>

      <!-- Works Grid -->
      <div class="grid gap-6 md:grid-cols-3">
        <div
          v-for="i in 6"
          :key="i"
          class="bg-gray-100 h-64 flex items-center justify-center rounded-lg shadow hover:shadow-lg transition"
        >
          <span class="text-gray-400 text-xl font-semibold">
            ภาพผลงาน {{ i }}
          </span>
        </div>
      </div>
    </div>
  </section>
</template>