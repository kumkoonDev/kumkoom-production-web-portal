<template>
  <div
    v-if="show"
    class="fixed inset-0 flex items-center justify-center bg-black/60  bg-opacity-50 z-50"
  >
    <div class="flex flex-col items-center">
      <!-- Spinner -->
      <div class="w-12 h-12 border-4 border-white border-t-transparent rounded-full animate-spin"></div>
      <p class="mt-3 text-white font-medium">กำลังโหลดข้อมูล...</p>
    </div>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  show: boolean
}>()
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
