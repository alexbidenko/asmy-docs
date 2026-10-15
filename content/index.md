---
title: Admire Server Manager
description: Установка и повседневная работа с Asmy — панелью управления сервером.
navigation: false
---

::u-page-hero
---
title: Admire Server Manager
headline: Руководство Asmy
description: Откройте приложение по домену, проверьте контейнеры, настройте доступ команды и работайте с файлами — от первого запуска до обслуживания сервера.
ui:
  container: py-16 sm:py-20 lg:py-24
  title: text-4xl sm:text-5xl lg:text-6xl
  description: max-w-3xl mx-auto text-base sm:text-lg
links:
  - label: Начать работу
    to: /getting-started
    trailingIcon: i-lucide-arrow-right
  - label: Установить Asmy
    to: /getting-started/installing
    variant: outline
---
::

::u-page-section
---
title: Найдите нужную задачу
description: Последовательные инструкции для нового сервера и короткие справки для ежедневной работы.
ui:
  container: pt-0 pb-16 sm:pt-0 sm:pb-20 lg:pt-0 lg:pb-24
  title: text-2xl sm:text-3xl lg:text-4xl
---
:::u-page-grid{class="lg:grid-cols-2"}
::::u-page-card
---
title: Первый сайт
description: Создайте проект, подключите контейнер к общей сети и направьте домен на приложение.
icon: i-lucide-globe
to: /usage/constructor
---
::::

::::u-page-card
---
title: Контейнеры и диагностика
description: Состояния Docker, запуск и перезапуск, логи и терминал внутри контейнера.
icon: i-lucide-container
to: /docker/containers
---
::::

::::u-page-card
---
title: Хранилища и файлы
description: Docker volumes, загрузка и скачивание, копирование и текстовый редактор.
icon: i-lucide-folder-open
to: /files/volumes
---
::::

::::u-page-card
---
title: Пользователи и права
description: Приглашения, роли в проектах и границы текущего разграничения доступа.
icon: i-lucide-users
to: /usage/users
---
::::

::::u-page-card
---
title: Обслуживание и обновления
description: Автоматические обновления панели, версия установки и проверка результата.
icon: i-lucide-refresh-cw
to: /usage/updating
---
::::

::::u-page-card
---
title: Решение проблем
description: Панель недоступна, сайт отвечает 502 или обновление не завершилось — с чего начать проверку.
icon: i-lucide-life-buoy
to: /operations/troubleshooting
---
::::
:::
::

::u-page-section
---
title: Перед рабочей установкой
description: Asmy управляет сервером с расширенными полномочиями. Подготовьте резервные копии, используйте HTTPS и предоставляйте доступ только доверенным людям.
class: border-t border-default bg-elevated/30
ui:
  container: py-12 sm:py-16 lg:py-20
  title: text-2xl sm:text-3xl lg:text-4xl
links:
  - label: Безопасность и подключения
    to: /operations/security
    variant: outline
  - label: Резервные копии
    to: /operations/backups
    variant: outline
---
::
