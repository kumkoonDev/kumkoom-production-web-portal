// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
  compatibilityDate: "2025-07-15",
  devtools: { enabled: true },
  ssr: true,
  css: ["~/assets/css/main.css", "~/assets/css/fonts.css"],
  vite: {
    plugins: [tailwindcss()],
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
      title: "ค้ำคูณโปรดักชั่น",
      // titleTemplate: '%s | คำคุณโปรดักชั่น',
      meta: [
        {
          name: "description",
          content:
            "รับผลิตสื่อโฆษณา วิดีโอ รีวิวสินค้า โมชั่นกราฟฟิก และสื่อการสอน ครบวงจร",
        },
        { property: "og:title", content: "ค้ำคูณโปรดักชั่น" },
        {
          property: "og:description",
          content:
            "รับผลิตสื่อโฆษณา วิดีโอ รีวิวสินค้า โมชั่นกราฟฟิก และสื่อการสอน ครบวงจร",
        },
        { property: "og:type", content: "website" },
        { property: "og:image", content: "/imgs/LOGO_KKP.png" },
      ],
      link: [{ rel: "icon", type: "image/x-icon", href: "/favicon.ico" }],
    },
  },

  site: {
    url: "https://www.kumkoonproduction.com/",
    name: "ค้ำคูณโปรดักชั่น",
  },

  modules: [
    "@nuxt/content",
    "@nuxt/eslint",
    "@nuxt/image",
    "@nuxt/scripts",
    "@nuxt/test-utils",
    "@nuxt/ui",
    "nuxt-aos",
    "nuxt-schema-org",
    "nuxt-og-image",
  ],

  ogImage: {
    // ✅ ตั้งค่าพื้นฐาน (optional)
    defaults: {
      component: "OgImage", // ชื่อ component ที่จะใช้ render OG image
      background: "#111827", // สีพื้นหลัง (tailwind gray-900)
      color: "#f4a13f", // สีข้อความหลัก
    },

    fonts: [
      // ตัวอย่าง: ถ้าคุณใช้ฟอนต์ Sarabun
      {
        name: 'SukhumvitSet', // ชื่อที่คุณจะใช้อ้างอิงใน OG component
        path: '/fonts/SukhumvitSet-Medium.ttf', // เส้นทางไปยังไฟล์ฟอนต์จริง
        weight: 400,
        style: 'normal',
      },
    ]
  },
});
