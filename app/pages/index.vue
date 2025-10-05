<template>
  <!-- <Loading :show="loading" /> -->

  <section class="relative w-full h-[300px] overflow-hidden md:h-[600px]">
    <!-- Background Video -->
    <div
      class="absolute top-0 left-0 w-full h-[300px] md:h-[600px] overflow-hidden"
    >
      <iframe
        class="absolute top-1/2 left-1/2 min-w-full min-h-full w-auto h-auto -translate-x-1/2 -translate-y-1/2 scale-[2] pointer-events-none"
        src="https://www.youtube.com/embed/2Gg6Seob5Mg?autoplay=1&mute=1&loop=1&controls=0&showinfo=0&modestbranding=1&playlist=2Gg6Seob5Mg"
        title="YouTube video background"
        frameborder="0"
        allow="autoplay; fullscreen"
      ></iframe>
    </div>

    <!-- Overlay -->
    <div class="absolute inset-0 bg-black/60 z-0"></div>

    <!-- Hero Content -->
    <div
      class="relative z-10 flex items-center justify-start h-full px-8 md:ml-40 md:px-16"
    >
      <div class="text-white max-w-xl">
        <h1 class="text-4xl md:text-6xl font-bold mb-4">ยินดีต้อนรับ สู่</h1>
        <h1 class="text-4xl md:text-6xl font-bold mb-4">ค้ำคูณโปรดักชั่น</h1>
        <p class="text-lg md:text-xl mb-6">รับผลิตสื่อโฆษณา</p>

        <div class="flex space-x-4">
          <UButton
            to="/services"
            class="text-white px-6 py-3 bg-[#f4a13f] rounded-lg shadow hover:bg-[#f4c48d] transition"
            >บริการของเรา</UButton
          >
          <UButton
            to="/contact"
            class="text-white px-6 py-3 bg-[#f4a13f] rounded-lg shadow hover:bg-[#f4c48d] transition"
            >ติดต่อเรา</UButton
          >
        </div>
      </div>
    </div>
  </section>

  <!-- BANNER SECTION -->
  <section
    class="bg-[#f4a13f] h-[160px] flex items-center justify-center text-center"
  >
    <p
      class="text-lg p-4 md:text-2xl font-light max-w-4xl leading-relaxed text-gray-200"
    >
      เราคือบริษัทผู้ชำนาญ "ผลิตสื่อ VDO ออนไลน์" กว่า 200 รายการ <br />
      ไม่ว่าจะเป็น รายการ / รีวิวสินค้า /โมชั่นกราฟฟิก / สื่อการสอน / ละครสั้น
    </p>
  </section>

  <!-- ABOUT SECTION -->
  <section  class="py-16 bg-gray-50">
    <div data-aos="fade-up" class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <!-- Image -->
        <div>
          <img
            src="https://placehold.co/955x682"
            class="rounded-lg shadow-xl"
          />
        </div>

        <!-- Text -->
        <div>
          <h3
            class="text-lg text-primary font-semibold mb-3 uppercase tracking-widest text-black"
          >
            เกี่ยวกับเรา
          </h3>
          <h2 class="text-4xl md:text-5xl font-bold mb-6 text-black">
            ค้ำคุณโปรดักชั่น
          </h2>
          <p class="text-gray-700 leading-relaxed text-lg">
            ค้ำคุณโปรดักชั่น Lorem Ipsum is simply dummy text of the printing
            and typesetting industry. <br /><br />
            is simply dummy text of the printing and typesetting industry. Lorem
            Ipsum has been the industry's standard dummy text ever since the
            1500s, when an unknown printer took a galley of type and scrambled
            it to make a type specimen book. It has survived not only five
            centuries, but also the leap into electronic typesetting, remaining
            essentially unchanged. It was popularised in the 1960s with the
            release of Letraset sheets containing Lorem Ipsum passages, and more
            recently with desktop publishing software like Aldus PageMaker
            including versions of Lorem Ipsum
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- SERVICES SECTION -->
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

  <section class="py-16 bg-gray-50">
    <div data-aos="fade-up"  class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900">ติดต่อเรา</h2>
      </div>

      <div class="grid md:grid-cols-2 gap-10 items-start">
        <div class="space-y-6 text-left flex justify-center">
          <div class="space-y-4 w-1/2 flex flex-col justify-center m-4">
            <div class="flex justify-start items-center space-x-4">
              <div class="bg-[#f4a13f] p-3 rounded-lg text-white">📍</div>
              <div>
                <h3 class="font-semibold text-gray-900">Location</h3>
                <p class="text-gray-600">อำเภอ เขาวง จังหวัด กาฬสินธุ์ 46110</p>
              </div>
            </div>

            <div class="flex justify-start items-center space-x-4">
              <div class="bg-[#f4a13f] p-3 rounded-lg text-white">📞</div>
              <div>
                <h3 class="font-semibold text-gray-900">Phone</h3>
                <p class="text-gray-600">(+66) 085-555-8555</p>
              </div>
            </div>

            <div class="flex justify-start items-center space-x-4">
              <div class="bg-[#f4a13f] p-3 rounded-lg text-white">✉️</div>
              <div>
                <h3 class="font-semibold text-gray-900">Email</h3>
                <p class="text-gray-600">info@example.com</p>
              </div>
            </div>
          </div>
        </div>

        <div>
          <iframe
            class="w-full h-80 rounded-lg shadow"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d122295.30523585467!2d104.0952827!3d16.690474799999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313d1b50916ef065%3A0x302b54113606ad0!2z4Lit4Liz4LmA4Lig4LitIOC5gOC4guC4suC4p-C4hyDguIHguLLguKzguKrguLTguJnguJjguLjguYw!5e0!3m2!1sth!2sth!4v1759397476924!5m2!1sth!2sth"
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
          ></iframe>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const loading = ref(true);

onMounted(() => {
  // ถ้า document โหลดเสร็จแล้วก่อนหน้านี้
  if (document.readyState === "complete") {
    loading.value = false;
  } else {
    // ฟัง event ตอนโหลดเสร็จ
    window.addEventListener("load", () => {
      loading.value = false;
    });
  }
});

useSeoMeta({
  title: 'ค้ำคูณโปรดักชั่น',
  description: 'รับผลิตสื่อโฆษณา',
  // ogDescription: 'This is my amazing site, let me tell you all about it.',
  // ogImage: 'https://example.com/image.png',
})
</script>

<style scoped></style>
