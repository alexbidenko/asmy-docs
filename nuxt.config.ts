export default defineNuxtConfig({
  extends: ['docus'],
  srcDir: '.',
  modules: ['@nuxt/eslint'],
  compatibilityDate: '2026-10-13',
  ogImage: { enabled: false },
  site: {
    url: 'https://docs.asmy.pro',
    name: 'Admire Server Manager — Документация',
  },
  app: {
    head: {
      htmlAttrs: { lang: 'ru' },
      meta: [{ property: 'og:image', content: 'https://asmy.pro/og_image.jpg' }],
    },
  },
  nitro: {
    prerender: {
      failOnError: true,
      autoSubfolderIndex: true,
    },
  },
});
