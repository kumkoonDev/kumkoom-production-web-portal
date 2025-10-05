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