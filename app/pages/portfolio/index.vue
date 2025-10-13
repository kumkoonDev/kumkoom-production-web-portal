<template>
  <div class="py-16 bg-white">
    <div data-aos="fade-up" class="max-w-7xl mx-auto px-6 lg:px-8">
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
        <div v-for="work in dataPortfolio" :key="work.id" @click="openModal(work.videoId, work.mediaPlatforms)"
          class="relative h-64 flex items-center justify-center rounded-lg shadow hover:shadow-lg transition cursor-pointer bg-cover bg-center w-full hover:scale-105"
          :style="{ backgroundImage: `url(${work.thumbnail})` }">
          <div
            class="absolute inset-0 bg-black bg-opacity-20 transition-opacity opacity-0 hover:opacity-60 flex items-center justify-center">
            <span
              class="relative text-white text-xl font-semibold px-3 py-1 rounded hover:text-primary transition-colors">
              ▶ {{ work.title }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- Modal -->
  <VideoModal :show="showModal" :video-id="selectedVideoId" :mediaPlatformse="selectedVideoMediaPlatformse"
    @close="closeModal" />
</template>

<script setup>

import VideoModal from '~/components/VideoModal.vue'

const showModal = ref(false)
const selectedVideoId = ref('')
const selectedVideoMediaPlatformse = ref('youtube')



const dataPortfolio = ref([
  {
    id: 1,
    title: "VTR Kalasin University 2026",
    videoId: "k72XYUkt7gbJFWE1aio",
    mediaPlatforms: 'dailymotion',
    thumbnail: "/imgs/thumbnail_1.png"
  },
  {
    id: 2,
    title: "สำนักงานขนส่งจังหวัดกาฬสินธุ์",
    videoId: "nzDFZ0s6Res",
    mediaPlatforms: 'youtube',
    thumbnail: "/imgs/thumbnail_2.png"
  },
  {
    id: 3,
    title: "โรงเรียนกาญจนาภิเษกวิทยาลัย กาฬสินธุ์",
    videoId: "zsmlcknZxtk",
    mediaPlatforms: 'youtube',
    thumbnail: "/imgs/thumbnail_3.png"
  },
  {
    id: 4,
    title: "local data ownership",
    videoId: "https://www.facebook.com/watch/?v=1247964613673214",
    mediaPlatforms: 'facebook',
    thumbnail: "/imgs/thumbnail_4.png"
  },
  {
    id: 5,
    title: "กองบุญเพื่อการให้ จังหวัดกาฬสินธุ์",
    videoId: "https://www.facebook.com/watch/?v=9728740620582595",
    mediaPlatforms: 'facebook',
    thumbnail: "/imgs/thumbnail_5.png"
  },
  {
    id: 6,
    title: "HILUXREVO ชุมชนคนครีเอเตอร์ ",
    videoId: "https://www.facebook.com/watch/?v=718350310229849",
    mediaPlatforms: 'facebook',
    thumbnail: "/imgs/thumbnail_6.png"
  },
  {
    id: 7,
    title: "อกหักทุกครั้ง อกพังทุกปี",
    videoId: "eSUwNeuZSaM",
    mediaPlatforms: 'youtube',
    thumbnail: "/imgs/thumbnail_7.png"
  },
  {
    id: 8,
    title: "เปิดใจฮักกัน- กีตาร์จี",
    videoId: "jJHwf0-hQfE",
    mediaPlatforms: 'youtube',
    thumbnail: "/imgs/thumbnail_8.png"
  },
  {
    id: 9,
    title: "รักแท้แพ้ผู้บ่าวเทสดี",
    videoId: "JD9yd35BUu0",
    mediaPlatforms: 'youtube',
    thumbnail: "/imgs/thumbnail_9.png"
  },
]);

function openModal(id, type) {
  selectedVideoId.value = id
  selectedVideoMediaPlatformse.value = type
  showModal.value = true
}

function closeModal() {
  showModal.value = false
  selectedVideoId.value = ''
  selectedVideoMediaPlatformse.value = 'youtube'
}

</script>