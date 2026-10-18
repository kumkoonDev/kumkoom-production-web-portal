<template>
  <section class="bg-white py-16">
    <div data-aos="fade-up" class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mb-12 text-center">
        <h2 class="text-3xl font-bold text-gray-900 md:text-4xl">
          ผลงานของเรา
        </h2>
        <p class="mx-auto mt-4 max-w-2xl text-lg text-gray-600">
          ตัวอย่างผลงานที่เราได้ทำให้กับลูกค้าในหลายอุตสาหกรรม
          เพื่อสร้างคุณค่าและความแตกต่างที่แท้จริง
        </p>
      </div>

      <!-- Category Filter Tabs -->
      <div class="mb-10 flex flex-wrap justify-center gap-2">
        <button
          v-for="cat in categories"
          :key="cat"
          type="button"
          @click="selectedCategory = cat"
          :class="[
            'px-6 py-2 rounded-full text-sm font-medium transition-all duration-200 border',
            selectedCategory === cat
              ? 'bg-primary text-white border-primary shadow-md'
              : 'bg-white text-gray-600 border-gray-200 hover:border-primary hover:text-primary'
          ]"
        >
          {{ cat === 'All' ? 'ทั้งหมด' : cat }}
        </button>
      </div>

      <div class="grid gap-6 md:grid-cols-3">
        <button
          v-for="work in filteredPortfolioItems"
          :key="work.title"
          type="button"
          class="group relative flex h-64 w-full items-center justify-center overflow-hidden rounded-lg bg-cover bg-center shadow transition hover:scale-[1.02] hover:shadow-lg focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-4 focus-visible:outline-primary"
          :style="{ backgroundImage: `url('${work.thumbnail}')` }"
          :aria-label="`เล่นวิดีโอ: ${work.title}`"
          @click="openModal(work)"
        >
          <span class="absolute inset-0 flex items-center justify-center bg-black/40 opacity-0 transition-opacity group-hover:opacity-80 group-focus-visible:opacity-80">
            <span class="rounded px-3 py-1 text-xl font-semibold text-white transition-colors group-hover:text-primary">
              ▶ {{ work.title }}
            </span>
          </span>
        </button>
      </div>
    </div>

    <VideoModal
      :show="showModal"
      :video-id="selectedVideoId"
      :platform="selectedPlatform"
      @close="closeModal"
    />
  </section>
</template>

<script setup lang="ts">
import { ref, computed } from "vue";
import { portfolioItems } from "~/data/portfolio";
import type { MediaPlatform, PortfolioItem } from "~/types/media";
import VideoModal from "~/components/VideoModal.vue";

const showModal = ref(false);
const selectedVideoId = ref("");
const selectedPlatform = ref<MediaPlatform>("youtube");
const selectedCategory = ref("All");

// Extract unique categories from portfolio items
const categories = computed(() => {
  const uniqueCats = Array.from(new Set(portfolioItems.map(item => item.category)));
  return ['All', ...uniqueCats];
});

// Filter items based on selected category
const filteredPortfolioItems = computed(() => {
  if (selectedCategory.value === 'All') {
    return portfolioItems;
  }
  return portfolioItems.filter(item => item.category === selectedCategory.value);
});

function openModal(work: PortfolioItem) {
  selectedVideoId.value = work.videoId;
  selectedPlatform.value = work.platform;
  showModal.value = true;
}

function closeModal() {
  showModal.value = false;
  selectedVideoId.value = "";
  selectedPlatform.value = "youtube";
}
</script>
