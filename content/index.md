---
title: Admire Server Manager
description: Установка, настройка и работа с Asmy — панелью администрирования сервера.
navigation: false
---

::u-page-hero
---
title: Admire Server Manager
headline: Документация Asmy
description: Установка, настройка и работа с сервером. Docker, доменные имена, файлы и права доступа — в одном интерфейсе.
ui:
  container: py-16 sm:py-20 lg:py-24
  title: text-4xl sm:text-5xl lg:text-6xl
  description: max-w-3xl mx-auto text-base sm:text-lg
links:
  - label: Начало работы
    to: /getting-started
    trailingIcon: i-lucide-arrow-right
  - label: Документация на GitHub
    to: https://github.com/alexbidenko/asmy-docs
    target: _blank
    variant: outline
---
::

::u-page-section
---
id: возможности
title: Возможности Asmy
description: От установки до ежедневной работы с сервером.
ui:
  container: pt-0 pb-16 sm:pt-0 sm:pb-20 lg:pt-0 lg:pb-24
  title: text-2xl sm:text-3xl lg:text-4xl
---
:::u-page-grid{class="lg:grid-cols-2"}
::::u-page-card
---
title: Docker и терминал
description: Управление контейнерами, терминал и среда разработки web-приложений.
icon: i-lucide-container
to: /getting-started/opportunities
---
::::

::::u-page-card
---
title: Домены и web-сервер
description: Обратное и прямое проксирование, перенаправления и настройка доменных имён.
icon: i-lucide-globe
to: /usage/constructor
---
::::

::::u-page-card
---
title: Файлы и хранилища
description: Docker-хранилища, файловый менеджер и редактирование файлов прямо в браузере.
icon: i-lucide-folder-open
to: /getting-started/opportunities
---
::::

::::u-page-card
---
title: Команда и права доступа
description: Пользователи, проекты и настройка ролей для участников команды.
icon: i-lucide-users
to: /usage/roles
---
::::
:::
::

::u-page-section
---
id: запуск
title: Запуск Asmy
description: Подготовьте параметры своей установки. Подробные шаги и первый вход описаны в руководстве.
orientation: horizontal
class: border-t border-default bg-elevated/30
ui:
  container: py-16 sm:py-20 lg:py-24
  title: text-2xl sm:text-3xl lg:text-4xl
links:
  - label: Установка и запуск
    to: /getting-started/installing
    trailingIcon: i-lucide-arrow-right
---

```bash
mkdir -p ./admire-server-manager && cd "$_"
echo "EMAIL=tls-email@example.com" > .env
echo "ADMIN_HOSTNAME=admin.example.com" >> .env
curl https://raw.asmy.pro/start.sh -o start.sh
chmod +x start.sh
./start.sh
```
::
