<template>
  <header
    class="w-full h-[90px] bg-white shadow flex items-center px-6 border-b-2 border-primary md:px-12"
  >
    <!-- Mobile: Hamburger Menu -->
    <UButton
      @click="isOpen = true"
      class="md:hidden text-gray-700 bg-transparent p-2 mr-4 hover:bg-gray-400"
    >
      <!-- Icon Hamburger -->
      <svg
        class="w-7 h-7"
        fill="none"
        stroke="currentColor"
        viewBox="0 0 24 24"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M4 6h16M4 12h16M4 18h16"
        />
      </svg>
    </UButton>

    <!-- Left: Logo -->
    <div class="hidden md:flex items-start justify-start flex-1">
      <NuxtLink to="/">
        <img
          src="/imgs/LOGO_KKP.png"
          alt="Logo"
          class="h-[80px] w-auto object-contain"
        />
      </NuxtLink>
    </div>

    <!-- Logo (Mobile: Absolute Center) -->
    <div class="absolute left-1/2 transform -translate-x-1/2 md:hidden">
      <NuxtLink to="/">
        <img src="/imgs/LOGO_KKP.png" alt="Logo" class="h-[80px] w-auto" />
      </NuxtLink>
    </div>

    <!-- Center: Navigation -->
    <nav class="hidden md:flex flex-1 justify-center w-lg">
      <ul
        class="flex flex-row gap-4 w-xl text-gray-700 font-medium justify-center"
      >
        <li><NuxtLink to="/" class="hover:text-primary">หน้าแรก</NuxtLink></li>
        <li>
          <NuxtLink to="/service" class="hover:text-primary">บริการ</NuxtLink>
        </li>
        <li>
          <NuxtLink to="/portfolio" class="hover:text-primary">ผลงาน</NuxtLink>
        </li>
        <li>
          <NuxtLink to="/about" class="hover:text-primary"
            >เกี่ยวกับเรา</NuxtLink
          >
        </li>
        <li>
          <NuxtLink to="/contact" class="hover:text-primary"
            >ติดต่อเรา</NuxtLink
          >
        </li>
      </ul>
    </nav>

    <!-- Right: Social Icons -->
    <div class="flex items-end space-x-4 justify-end flex-1">
      <a href="https://facebook.com" target="_blank" rel="noopener noreferrer">
        <svg
          class="w-6 h-6 text-gray-600 hover:text-blue-600"
          fill="currentColor"
          viewBox="0 0 24 24"
        >
          <path
            d="M22 12c0-5.522-4.477-10-10-10S2 6.478 2 12c0 5.012 3.657 9.157 8.438 9.877v-6.987H7.898V12h2.54V9.797c0-2.507 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.463h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.987C18.343 21.157 22 17.012 22 12"
          ></path>
        </svg>
      </a>
      <a href="https://instagram.com" target="_blank" rel="noopener noreferrer">
        <svg
          class="w-6 h-6 text-gray-600 hover:text-pink-500"
          fill="currentColor"
          viewBox="0 0 24 24"
        >
          <path
            d="M12 2.163c3.204 0 3.584.012 4.85.07 1.366.062 2.633.34 3.608 1.316.975.975 1.254 2.242 1.316 3.608.058 1.266.07 1.646.07 4.85s-.012 3.584-.07 4.85c-.062 1.366-.34 2.633-1.316 3.608-.975.975-2.242 1.254-3.608 1.316-1.266.058-1.646.07-4.85.07s-3.584-.012-4.85-.07c-1.366-.062-2.633-.34-3.608-1.316-.975-.975-1.254-2.242-1.316-3.608C2.175 15.747 2.163 15.367 2.163 12s.012-3.584.07-4.85c.062-1.366.34-2.633 1.316-3.608.975-.975 2.242-1.254 3.608-1.316C8.416 2.175 8.796 2.163 12 2.163zm0 1.687c-3.17 0-3.548.012-4.796.07-1.076.049-1.662.228-2.054.38-.516.2-.885.438-1.27.823-.385.385-.623.754-.823 1.27-.152.392-.331.978-.38 2.054-.058 1.248-.07 1.626-.07 4.796s.012 3.548.07 4.796c.049 1.076.228 1.662.38 2.054.2.516.438.885.823 1.27.385.385.754.623 1.27.823.392.152.978.331 2.054.38 1.248.058 1.626.07 4.796.07s3.548-.012 4.796-.07c1.076-.049 1.662-.228 2.054-.38.516-.2.885-.438 1.27-.823.385-.385.623-.754.823-1.27.152-.392.331-.978.38-2.054.058-1.248.07-1.626.07-4.796s-.012-3.548-.07-4.796c-.049-1.076-.228-1.662-.38-2.054-.2-.516-.438-.885-.823-1.27-.385-.385-.754-.623-1.27-.823-.392-.152-.978-.331-2.054-.38-1.248-.058-1.626-.07-4.796-.07zm0 3.892a5.945 5.945 0 1 0 0 11.89 5.945 5.945 0 0 0 0-11.89zm0 9.8a3.855 3.855 0 1 1 0-7.71 3.855 3.855 0 0 1 0 7.71zm6.406-10.845a1.386 1.386 0 1 1 0-2.772 1.386 1.386 0 0 1 0 2.772z"
          />
        </svg>
      </a>
      <a href="https://youtube.com" target="_blank" rel="noopener noreferrer">
        <svg
          class="w-6 h-6 text-gray-600 hover:text-red-600"
          fill="currentColor"
          viewBox="0 0 24 24"
        >
          <path
            d="M23.498 6.186a2.974 2.974 0 0 0-2.09-2.103C19.691 3.5 12 3.5 12 3.5s-7.691 0-9.408.583a2.974 2.974 0 0 0-2.09 2.103A31.41 31.41 0 0 0 .5 12a31.41 31.41 0 0 0 .002 5.814 2.974 2.974 0 0 0 2.09 2.103C4.309 20.5 12 20.5 12 20.5s7.691 0 9.408-.583a2.974 2.974 0 0 0 2.09-2.103A31.41 31.41 0 0 0 23.5 12a31.41 31.41 0 0 0-.002-5.814zM9.75 15.018V8.982L15.5 12l-5.75 3.018z"
          />
        </svg>
      </a>
    </div>

    <!-- SlideNav (Mobile) -->
    <transition name="slide">
      <div v-if="isOpen" class="fixed inset-0 z-50 flex">
        <!-- Backdrop -->
        <div
          class="flex-0 bg-black bg-opacity-50"
          @click="isOpen = false"
        ></div>

        <!-- Sidebar -->
        <div class="w-64 bg-white shadow-lg p-6 h-full">
          <button @click="isOpen = false" class="mb-6 text-gray-700">
            ✕ ปิด
          </button>
          <nav>
            <ul class="space-y-4 text-gray-700 font-medium">
              <li>
                <NuxtLink to="/" @click="isOpen = false">หน้าแรก</NuxtLink>
              </li>
              <li>
                <NuxtLink to="/service" @click="isOpen = false"
                  >บริการ</NuxtLink
                >
              </li>
              <li>
                <NuxtLink to="/portfolio" @click="isOpen = false"
                  >ผลงาน</NuxtLink
                >
              </li>
              <li>
                <NuxtLink to="/about" @click="isOpen = false"
                  >เกี่ยวกับเรา</NuxtLink
                >
              </li>
              <li>
                <NuxtLink to="/contact" @click="isOpen = false"
                  >ติดต่อเรา</NuxtLink
                >
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </transition>
  </header>
</template>

<script setup>
import { ref } from "vue";
const isOpen = ref(false);
</script>

<style>
.slide-enter-active,
.slide-leave-active {
  transition: transform 0.3s ease;
}
.slide-enter-from,
.slide-leave-to {
  transform: translateX(-100%);
}
</style>
