<template>
  <div class="relative w-full h-[300px] overflow-hidden md:h-[600px]">
    <!-- Background Video -->

    <div class="absolute top-0 left-0 w-full overflow-hidden">
      <!-- <iframe
        class="absolute top-1/2 left-1/2 min-w-full min-h-full w-auto h-auto -translate-x-1/2 -translate-y-1/2 scale-[2] pointer-events-none"
        src="https://www.youtube.com/embed/2Gg6Seob5Mg?autoplay=1&mute=1&loop=1&controls=0&showinfo=0&modestbranding=1&playlist=2Gg6Seob5Mg"
        title="YouTube video background"
        frameborder="0"
        allow="autoplay; fullscreen"
      ></iframe> -->
      <BannerSlider class="absolute min-w-full min-h-full w-auto h-auto" />
    </div>
    <!-- Overlay -->
    <div class="absolute inset-0 bg-black/60 z-0"></div>

    <!-- Hero Content -->
    <div data-aos="fade-up" class="relative z-10 flex items-center justify-start h-full px-8 md:ml-40 md:px-16">
      <div class="text-white max-w-xl">
        <h1 class="text-4xl md:text-6xl font-bold mb-4">ยินดีต้อนรับ สู่</h1>
        <p class="text-4xl md:text-6xl font-bold mb-4">ค้ำคูณ โปรดักชั่น</p>
        <p class="text-lg md:text-xl mb-6">
          เติมเต็มทุกไอเดีย สร้างสรรค์ทุกสื่ออย่างมืออาชีพ
        </p>

        <div class="flex space-x-4">
          <UButton to="/service" class="text-white px-6 py-3 bg-primary rounded-lg shadow bg-hover transition">
            บริการของเรา</UButton>
          <UButton to="/contact" class="text-white px-6 py-3 bg-primary rounded-lg shadow bg-hover transition">ติดต่อเรา
          </UButton>
        </div>
      </div>
    </div>
  </div>

  <!-- BANNER Section -->
  <div data-aos="fade-up" class="bg-primary h-[160px] flex items-center justify-center text-center">
    <p class="text-lg p-4 md:text-2xl font-light max-w-4xl leading-relaxed text-gray-200">
      เราคือทีมงานคนรุ่นใหม่ที่เชื่อในพลังของความคิดสร้างสรรค์<br />
      พร้อมส่งต่อผลงานคุณภาพที่ตรงใจคุณ<br />
      ไม่ว่าจะเป็นภาพ วิดีโอ หรือสื่อออนไลน์ทุกรูปแบบ
    </p>
  </div>

  <!-- ABOUT Section -->
  <div class="py-16 bg-gray-50">
    <div data-aos="fade-up" class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <!-- Image -->
        <div>
          <NuxtImg src="/imgs/about_1.png" class="rounded-lg shadow-xl" loading="lazy" />
        </div>

        <!-- Text -->
        <div>
          <h3 class="text-2xl text-primary font-semibold mb-3 uppercase tracking-widest text-black">
            เกี่ยวกับเรา
          </h3>
          <h2 class="text-4xl md:text-5xl font-bold mb-6 text-black">
            ค้ำคูณ โปรดักชั่น
          </h2>
          <p class="text-gray-700 leading-relaxed text-lg">
            ค้ำคูณ โปรดักชั่น
            เกิดจากกลุ่มวัยรุ่นที่มีใจรักในการสร้างงานศิลป์และสื่อสร้างสรรค์
            เรามุ่งมั่นในการผลิตสื่อที่ตอบโจทย์ทั้งธุรกิจ องค์กร และบุคคล
            ด้วยกระบวนการทำงานครบวงจร ตั้งแต่การคิดไอเดีย เขียนบท ถ่ายทำ ตัดต่อ
            จนถึงการเผยแพร่
          </p>
        </div>
      </div>
    </div>

    <div data-aos="fade-up" class="hidden mt-6 max-w-7xl mx-auto px-6 lg:px-8 md:flex">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <!-- Text -->
        <div>
          <h2 class="text-2xl text-primary font-semibold mb-3 uppercase tracking-widest text-black">
            วิสัยทัศน์
          </h2>
          <p class="text-gray-700 leading-relaxed text-lg">
            เป็นพันธมิตรด้านการผลิตสื่อที่สร้างคุณค่า เติมเต็มภาพลักษณ์
            และสื่อสารได้ตรงใจกลุ่มเป้าหมาย
          </p>
        </div>

        <!-- Image -->
        <div>
          <NuxtImg src="/imgs/about_2.png" class="rounded-lg shadow-xl" loading="lazy" />
        </div>
      </div>
    </div>

    <div data-aos="fade-up" class="flex mt-6 max-w-7xl mx-auto px-6 lg:px-8 md:hidden">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <!-- Image -->
        <div>
          <NuxtImg src="/imgs/about_2.png" class="rounded-lg shadow-xl" loading="lazy" />
        </div>

        <!-- Text -->
        <div>
          <h3 class="text-2xl text-primary font-semibold mb-3 uppercase tracking-widest text-black">
            วิสัยทัศน์
          </h3>
          <p class="text-gray-700 leading-relaxed text-lg">
            เป็นพันธมิตรด้านการผลิตสื่อที่สร้างคุณค่า เติมเต็มภาพลักษณ์
            และสื่อสารได้ตรงใจกลุ่มเป้าหมาย
          </p>
        </div>
      </div>
    </div>

    <div data-aos="fade-up" class="mt-6 max-w-7xl mx-auto px-6 lg:px-8">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <!-- Image -->
        <div>
          <NuxtImg src="/imgs/about_3.png" class="rounded-lg shadow-xl" loading="lazy" />
        </div>

        <!-- Text -->
        <div>
          <h3 class="text-2xl text-primary font-semibold mb-3 uppercase tracking-widest text-black">
            จุดแข็งของเรา
          </h3>
          <p class="text-gray-700 leading-relaxed text-lg">
            ทีมงานคนรุ่นใหม่ ไอเดียสดใหม่ ทันสมัย<br />
            ครบทุกบริการในที่เดียว (One Stop Service)<br />
            ใส่ใจทุกรายละเอียด ตั้งแต่ต้นจนจบ<br />
          </p>
        </div>
      </div>
    </div>
  </div>

  <!-- SERVICES Section -->
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

  <!-- PORTFOLIO Section -->
  <PortfolioGallery />

  <!-- CONTACT Section -->
  <div class="py-16 bg-gray-50">
    <div data-aos="fade-up" class="max-w-7xl mx-auto px-6 lg:px-8">
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900">ติดต่อเรา</h2>
      </div>

      <div class="grid md:grid-cols-2 gap-10 items-start">
        <div class="space-y-6 text-left flex justify-start md:justify-center">
          <div class="space-y-4 w-2/3 flex flex-col justify-center m-4">
            <div class="flex justify-start items-center space-x-4">
              <div class="bg-primary p-3 rounded-lg text-white">📍</div>
              <div>
                <h3 class="font-semibold text-gray-900">Location</h3>
                <p class="text-gray-600">อำเภอ เขาวง จังหวัด กาฬสินธุ์ 46110</p>
              </div>
            </div>

            <div class="flex justify-start items-center space-x-4">
              <div class="bg-primary p-3 rounded-lg text-white">📞</div>
              <div>
                <h3 class="font-semibold text-gray-900">Phone</h3>
                <p class="text-gray-600">(+66) 092-957-3798</p>
              </div>
            </div>

            <div class="flex justify-start items-center space-x-4">
              <div class="bg-primary p-3 rounded-lg text-white">✉️</div>
              <div>
                <h3 class="font-semibold text-gray-900">Email</h3>
                <p class="text-gray-600">kumkoon.production@gmail.com</p>
              </div>
            </div>
          </div>
        </div>

        <div>
          <iframe class="w-full h-80 rounded-lg shadow"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d122295.30523585467!2d104.0952827!3d16.690474799999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313d1b50916ef065%3A0x302b54113606ad0!2z4Lit4Liz4LmA4Lig4LitIOC5gOC4guC4suC4p-C4hyDguIHguLLguKzguKrguLTguJnguJjguLjguYw!5e0!3m2!1sth!2sth!4v1759397476924!5m2!1sth!2sth"
            loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import BannerSlider from "~/components/BannerSlider.vue";
import PortfolioGallery from "~/components/PortfolioGallery.vue";
import { serviceItems } from "~/data/services";

useHead({
  title: "ค้ำคูณโปรดักชั่น | รับผลิตสื่อโฆษณา วิดีโอ รีวิวสินค้า",
  meta: [
    {
      name: "description",
      content:
        "ค้ำคูณโปรดักชั่น รับผลิตสื่อโฆษณา วิดีโอ รีวิวสินค้า สื่อการสอน โมชั่นกราฟฟิก และสื่อ VDO ออนไลน์  ติดต่อเราได้เลย!",
    },
    {
      name: "keywords",
      content:
        "รับผลิตสื่อโฆษณา, วิดีโอโปรโมท, รีวิวสินค้า, ผลิตวิดีโอ, สื่อการสอน, โมชั่นกราฟฟิก, Kumkoon Production",
    },
    { property: "og:title", content: "ค้ำคูณโปรดักชั่น | รับผลิตสื่อโฆษณา" },
    {
      property: "og:description",
      content: "ทีมงานผู้เชี่ยวชาญด้านการผลิตสื่อวิดีโอและโฆษณาออนไลน์ ครบวงจร",
    },
    { property: "og:image", content: "/imgs/OG_image.png" },
    { property: "og:url", content: "https://kumkoonproduction.com" },
  ],
});

defineOgImage({
  component: "OgImage",
  props: {
    title: "ค้ำคูณโปรดักชั่น",
    description:
      "รับผลิตสื่อโฆษณา วิดีโอ รีวิวสินค้า สื่อการสอน โมชั่นกราฟฟิก ครบวงจร",
  },
});
</script>

