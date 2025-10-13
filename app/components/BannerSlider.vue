<template>
  <div
    class="relative w-full h-[600px] overflow-hidden rounded-2xl shadow-lg"
    @mouseenter="pauseAutoplay"
    @mouseleave="startAutoplay"
  >
    <!-- Slides -->
    <div
      class="flex transition-transform duration-700 ease-in-out"
      :style="`transform: translateX(-${currentIndex * 100}%);`"
    >
      <div v-for="(img, i) in images" :key="i" class="w-full flex-shrink-0">
        <div
          class="w-full h-[300px] md:h-[600px]  bg-center bg-cover bg-no-repeat"
          :style="`background-image: url('${img}');`"
          role="img"
          :aria-label="`Slide ${i + 1}`"
        ></div>
      </div>
    </div>

    <!-- Left / Right controls -->
    <!-- <button
      class="absolute left-3 top-1/2 -translate-y-1/2 bg-white/70 backdrop-blur-sm p-2 rounded-full shadow hover:bg-white"
      @click="prev"
      aria-label="Previous slide"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
      </svg>
    </button>

    <button
      class="absolute right-3 top-1/2 -translate-y-1/2 bg-white/70 backdrop-blur-sm p-2 rounded-full shadow hover:bg-white"
      @click="next"
      aria-label="Next slide"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
      </svg>
    </button> -->

    <!-- Dots -->
    <!-- <div class="absolute left-1/2 -translate-x-1/2 bottom-4 flex gap-2">
      <button
        v-for="(img, i) in images"
        :key="i"
        @click="goTo(i)"
        :class="['w-3 h-3 rounded-full', currentIndex === i ? 'scale-110' : 'opacity-60']"
        :aria-label="`Go to slide ${i + 1}`"
      >
        <span class="block w-full h-full bg-white/90"></span>
      </button>
    </div> -->
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from "vue";

const props = defineProps<{ images?: string[]; interval?: number }>();

const images = props.images ?? [
  "/imgs/banner_1.png",
  "/imgs/banner_2.png",
  "/imgs/banner_3.png",
];

const intervalMs = props.interval ?? 5000;

const currentIndex = ref(0);
let timer: ReturnType<typeof setInterval> | null = null;

function next() {
  currentIndex.value = (currentIndex.value + 1) % images.length;
}
function prev() {
  currentIndex.value = (currentIndex.value - 1 + images.length) % images.length;
}
function goTo(i: number) {
  currentIndex.value = i;
}

function startAutoplay() {
  if (timer) return;
  timer = setInterval(next, intervalMs);
}
function pauseAutoplay() {
  if (timer) {
    clearInterval(timer);
    timer = null;
  }
}

// touch support (basic)
let touchStartX = 0;
function onTouchStart(e: TouchEvent) {
  touchStartX = e.touches[0].clientX;
}
function onTouchEnd(e: TouchEvent) {
  const dx = e.changedTouches[0].clientX - touchStartX;
  if (Math.abs(dx) > 50) {
    if (dx < 0) next();
    else prev();
  }
}

onMounted(() => {
  startAutoplay();
  // add document-level touch listeners to container (optional)
  const el = document.querySelector(".relative") as HTMLElement;
  if (el) {
    el.addEventListener("touchstart", onTouchStart, { passive: true });
    el.addEventListener("touchend", onTouchEnd);
  }
});

onBeforeUnmount(() => {
  pauseAutoplay();
  const el = document.querySelector(".relative") as HTMLElement;
  if (el) {
    el.removeEventListener("touchstart", onTouchStart);
    el.removeEventListener("touchend", onTouchEnd);
  }
});
</script>

<style scoped>
/* Make sure images keep 1920x600 ratio visually on large screens; height controlled by Tailwind classes above */
</style>
