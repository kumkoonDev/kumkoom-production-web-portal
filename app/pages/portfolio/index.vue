<template>
  <PortfolioGallery />
</template>

<script setup lang="ts">
import PortfolioGallery from "~/components/PortfolioGallery.vue";

useHead({
  title: "ผลงานของเรา | ค้ำคูณโปรดักชั่นเฮาส์",
  meta: [
    {
      name: "description",
      content: "ชมผลงานวิดีโอ โฆษณา สื่อประชาสัมพันธ์ และโปรดักชันจากค้ำคูณโปรดักชั่นเฮาส์",
    },
  ],
});
</script>
