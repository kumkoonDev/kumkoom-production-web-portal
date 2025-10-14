<template>
  <div
    class="flex flex-col justify-center items-center w-full h-full bg-[#111827] text-white text-center"
  >
    <img
      src="/imgs/LOGO_KKP.png"
      alt="logo"
      class="w-80 h-80 object-contain mx-auto"
    />
    <h1 class="text-7xl -top-8 font-bold text-[#f4a13f]">{{ title }}</h1>
    <p class="text-4xl -top-8 opacity-80">{{ description }}</p>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  description: String,
});
</script>
