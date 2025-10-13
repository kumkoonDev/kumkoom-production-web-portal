<template>
  <div class="flex flex-col justify-center items-center w-full h-full bg-[#111827] text-white text-center">
    <h1 class="text-7xl font-bold mb-4 text-[#f4a13f]">{{ title }}</h1>
    <p class="text-4xl opacity-80">{{ description }}</p>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  description: String,
})
</script>
