<template>
  <div
    class="relative h-full min-h-[300px] w-full overflow-hidden rounded-2xl shadow-lg md:min-h-[600px]"
    role="region"
    aria-roledescription="carousel"
    aria-label="ภาพแบนเนอร์"
    @mouseenter="pauseAutoplay"
    @mouseleave="startAutoplay"
    @touchstart.passive="onTouchStart"
    @touchend="onTouchEnd"
  >
    <div
      class="flex h-full transition-transform duration-700 ease-in-out"
      :style="{ transform: `translateX(-${currentIndex * 100}%)` }"
    >
      <div v-for="(image, index) in images" :key="image" class="h-full w-full shrink-0">
        <div
          class="h-[300px] w-full bg-cover bg-center bg-no-repeat md:h-[600px]"
          :style="{ backgroundImage: `url('${image}')` }"
          role="img"
          :aria-label="`ภาพแบนเนอร์ที่ ${index + 1}`"
          :aria-hidden="currentIndex !== index"
        />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
const defaultImages = [
  "/imgs/banner_1.png",
  "/imgs/banner_2.png",
  "/imgs/banner_3.png",
];

export default {
  props: {
    images: {
      type: Array as () => string[],
      default: () => defaultImages,
    },
    interval: {
      type: Number,
      default: 5000,
    },
  },
};
</script>

<script setup lang="ts">
import { onBeforeUnmount, onMounted, ref } from "vue";

const props = defineProps<{
  images?: string[];
  interval?: number;
}>();

const images = props.images || [
  "/imgs/banner_1.png",
  "/imgs/banner_2.png",
  "/imgs/banner_3.png",
];
const currentIndex = ref(0);
let timer: ReturnType<typeof setInterval> | undefined;
let touchStartX = 0;

function next() {
  if (images.length < 2) return;
  currentIndex.value = (currentIndex.value + 1) % images.length;
}

function previous() {
  if (images.length < 2) return;
  currentIndex.value = (currentIndex.value - 1 + images.length) % images.length;
}

function startAutoplay() {
  if (timer || images.length < 2 || (props.interval && props.interval <= 0)) return;
  timer = setInterval(next, props.interval || 5000);
}

function pauseAutoplay() {
  if (timer) clearInterval(timer);
  timer = undefined;
}

function onTouchStart(event: TouchEvent) {
  touchStartX = event.changedTouches[0]?.clientX ?? 0;
}

function onTouchEnd(event: TouchEvent) {
  const endX = event.changedTouches[0]?.clientX ?? touchStartX;
  const distance = endX - touchStartX;
  if (Math.abs(distance) < 50) return;
  if (distance < 0) next();
  else previous();
}

onMounted(startAutoplay);
onBeforeUnmount(pauseAutoplay);
</script>
