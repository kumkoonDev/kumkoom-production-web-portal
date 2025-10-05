// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  ssr: true,
  css: ["~/assets/css/main.css", "~/assets/css/fonts.css"],
  vite: {
    plugins: [
      tailwindcss(),
    ],
    server: {
      allowedHosts: [
        "localhost",
        "127.0.0.1",
        ".trycloudflare.com",
        ".kumkoonproduction.com",
      ],
    },
    optimizeDeps: {
      include: ["tailwindcss"],
    },
  },


  app: {
    head: {
      title: 'ค้ำคูณโปรดักชั่น',
      meta: [
        { name: 'description', content: 'รับผลิตสื่อโฆษณา' },
        { property: 'og:title', content: 'ค้ำคูณโปรดักชั่น' },
        { property: 'og:description', content: 'รับผลิตสื่อโฆษณา' },
        { property: 'og:type', content: 'website' },
        // { property: 'og:image', content: '/cover.jpg' },
      ],
      link: [
        // { rel: 'icon', type: 'image/png', href: '/favicon.png' }
      ]
    }
  },


  modules: [
    '@nuxt/content',
    '@nuxt/eslint',
    '@nuxt/image',
    '@nuxt/scripts',
    '@nuxt/test-utils',
    '@nuxt/ui',
    "nuxt-aos",
  ]
})