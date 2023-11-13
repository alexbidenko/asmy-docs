export default defineAppConfig({
  docus: {
    title: 'Admire Server Manager - Документация',
    description: 'Панель администрирования сервера нового поколения заточенная под современную контейнерную архитектуру.',
    image: 'https://asmy.pro/og_image.jpg',
    socials: {
      github: 'alexbidenko/asmy-docs'
    },
    github: {
      branch: 'main',
      repo: 'asmy-docs',
      owner: 'alexbidenko',
      edit: true
    },
    aside: {
      level: 0,
      collapsed: false,
      exclude: []
    },
    main: {
      padded: true,
      fluid: true
    },
    header: {
      logo: true,
      showLinkIcon: true,
      exclude: [],
      fluid: true
    }
  }
})
