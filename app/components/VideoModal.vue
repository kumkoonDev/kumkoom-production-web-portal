<template>
  <div
    v-if="show"
    class="fixed inset-0 z-50 flex items-center justify-center bg-black/70 p-4"
    role="dialog"
    aria-modal="true"
    aria-label="เครื่องเล่นวิดีโอ"
    @click.self="emitClose"
  >
    <div class="relative w-full max-w-6xl">
      <button
        type="button"
        class="absolute -top-12 right-0 z-20 text-5xl font-bold text-white transition hover:text-red-400"
        aria-label="ปิดหน้าต่างวิดีโอ"
        @click="emitClose"
      >
        &times;
      </button>

      <div class="aspect-video overflow-hidden rounded-2xl border-4 border-white/20 bg-black shadow-lg">
        <iframe
          v-if="platform === 'youtube'"
          class="h-full w-full"
          :src="`https://www.youtube.com/embed/${videoId}?autoplay=1&rel=0`"
          title="YouTube video player"
          allow="autoplay; encrypted-media; picture-in-picture; fullscreen"
          allowfullscreen
        />

        <iframe
          v-else-if="platform === 'facebook'"
          class="h-full w-full"
          :src="`https://www.facebook.com/plugins/video.php?href=${encodeURIComponent(videoId)}&autoplay=0&show_text=0`"
          title="Facebook video player"
          allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; fullscreen"
          allowfullscreen
        />

        <iframe
          v-else-if="platform === 'dailymotion'"
          class="h-full w-full"
          :src="`https://geo.dailymotion.com/player/x8lr5.html?video=${videoId}&amp;mute=true`"
          title="Dailymotion video player"
          allow="autoplay; fullscreen; picture-in-picture"
          allowfullscreen
        />

        <video
          v-else-if="platform === 'direct_video'"
          class="h-full w-full"
          autoplay
          muted
          loop
          playsinline
          controls
        >
          <source :src="videoId" type="video/mp4">
          Your browser does not support the video tag.
        </video>

        <iframe
          v-else-if="platform === 'googledrive'"
          class="h-full w-full"
          :src="`https://drive.google.com/file/d/${videoId}/preview`"
          title="Google Drive video player"
          allow="autoplay"
          allowfullscreen
        />

        <div v-else class="flex h-full items-center justify-center text-white">
          ไม่มีวิดีโอให้แสดง
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onBeforeUnmount, onMounted, watch } from "vue";
import type { MediaPlatform } from "~/types/media";

const props = defineProps<{
  show: boolean;
  videoId: string;
  platform: MediaPlatform;
}>();

const emit = defineEmits<{
  close: [];
}>();

function emitClose() {
  emit("close");
}

function onKeydown(event: KeyboardEvent) {
  if (event.key === "Escape" && props.show) emitClose();
}

watch(
  () => props.show,
  (isOpen) => {
    if (import.meta.client) {
      document.body.style.overflow = isOpen ? "hidden" : "";
    }
  },
  { immediate: true },
);

onMounted(() => window.addEventListener("keydown", onKeydown));
onBeforeUnmount(() => {
  if (import.meta.client) {
    window.removeEventListener("keydown", onKeydown);
    document.body.style.overflow = "";
  }
});
</script>
