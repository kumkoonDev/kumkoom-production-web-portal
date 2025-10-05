<template>
  <div class="bg-white w-full flex flex-col min-h-screen">
    <Header />
    <main class="flex-1 ">
      <slot />
    </main>
    <Footer />
  </div>
</template>

<script setup>
import Header from "../components/global/header.vue";
import Footer from "../components/global/footer.vue";
</script>

<style scoped></style>
