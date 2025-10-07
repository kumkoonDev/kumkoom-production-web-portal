<template>
  <!-- SERVICES SECTION -->
  <section class="py-16 bg-gray-50">
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
        <div
          v-for="data in dataService"
          :key="data.id"
          class="bg-white rounded-xl shadow hover:shadow-lg transition overflow-hidden flex flex-col w-full sm:w-[calc(50%-1rem)] md:w-[calc(33.333%-1.33rem)]"
          style="max-width: 384px"
        >
          <img
            :src="data.image"
            alt="service"
            class="w-full h-48 object-cover"
          />

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
  </section>
</template>

<script setup>

const dataService = ref([
  {
    id: 1,
    title: "ผลิตวิดีโอครบวงจร",
    description:
      "หนังสั้น, โฆษณา, MV เพลง, สื่อประชาสัมพันธ์, สื่อสารองค์กร",
    image: "https://placehold.co/400x300",
  },
  {
    id: 2,
    title: "ถ่ายภาพนิ่ง",
    description:
      "ภาพบุคคล, สินค้า, กิจกรรม, ภาพมุมสูงด้วยโดรน",
    image: "https://placehold.co/400x300",
  },
  {
    id: 3,
    title: "ตัดต่อและ Post-Production",
    description:
      "ใส่เอฟเฟกต์, กราฟิก, ซับไตเติล, มิกซ์เสียง",
    image: "https://placehold.co/400x300",
  },
  {
    id: 4,
    title: "งานอีเวนท์และไลฟ์สด",
    description:
      "บันทึกภาพ/วิดีโองานอีเวนท์, ถ่ายทอดสดออนไลน์",
    image: "https://placehold.co/400x300",
  },
  {
    id: 5,
    title: "PR & Communication",
    description:
      "ผลิตคอนเทนต์เพื่อการประชาสัมพันธ์และสร้างภาพลักษณ์",
    image: "https://placehold.co/400x300",
  },
]);

</script>

<style scoped></style>
