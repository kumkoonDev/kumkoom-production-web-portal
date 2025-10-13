<template>
  <div
  v-if="show"
  class="fixed inset-0 z-50 flex items-center justify-center"
>
  <!-- Overlay -->
  <div class="absolute inset-0 bg-black/70 " @click="$emit('close')"></div>

  <!-- Video box -->
  <div class="relative w-3/4 z-10">
    <!-- ปุ่มปิด -->
    <button
      @click="$emit('close')"
      class="absolute -top-15 right-0 text-white hover:text-red-400 text-7xl font-bold z-20"
    >
      &times;
    </button>

      <!-- Video iframe -->
      <div class="aspect-video rounded-2xl overflow-hidden shadow-lg bg-black">
        <!-- YouTube -->
        <iframe
          v-if="mediaPlatformse === 'youtube'"
          class="w-full h-full"
          :src="`https://www.youtube.com/embed/${videoId}?autoplay=1&rel=0`"
          frameborder="0"
          allow="autoplay; encrypted-media"
          allowfullscreen
        ></iframe>

        <!-- Facebook -->
        <iframe
          v-else-if="mediaPlatformse === 'facebook'"
          class="w-full h-full"
          :src="`https://www.facebook.com/plugins/video.php?href=${encodeURIComponent(videoId)}&autoplay=0&show_text=0`"
          frameborder="0"
          allow="autoplay; clipboard-write; encrypted-media; picture-in-picture"
          allowfullscreen
        ></iframe>

        <!-- Dailymotion -->
        <iframe 
          v-else-if="mediaPlatformse === 'dailymotion'"
          class="w-full h-full z-0"
          :src="`https://www.dailymotion.com/embed/video/${videoId}?autoplay=1`"
          frameborder="0"
          allow="autoplay; fullscreen; picture-in-picture"
          allowfullscreen
        ></iframe>

        <!-- Fallback -->
        <div v-else class="text-white flex items-center justify-center h-full">
          ไม่มีวิดีโอให้แสดง
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  show: Boolean,
  videoId: String,       // สำหรับ YouTube / Dailymotion
  mediaPlatformse: String      // 'youtube', 'facebook', 'dailymotion'
})
</script>
