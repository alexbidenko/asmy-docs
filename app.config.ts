export default defineAppConfig({
  docus: { locale: 'ru' },
  seo: {
    title: 'Admire Server Manager — Документация',
    description: 'Панель администрирования сервера нового поколения заточенная под современную контейнерную архитектуру.',
  },
  header: {
    title: 'Asmy',
    logo: { light: '/logo.svg', dark: '/logo.svg', alt: 'Asmy' },
  },
  github: { url: 'https://github.com/alexbidenko/asmy-docs', branch: 'main' },
  ui: { colors: { primary: 'purple', neutral: 'zinc' } },
});
