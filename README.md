# О Asmy

Admire Server Manager - программа, которая упростит вашу работу с сервером.
Настройка, работа с сайтами, мониторинг и многое другое в одном удобном интерфейсе.

Admire Server Manager (Asmy) помогает разработчикам web-приложений и devops инженерам в решении основных проблем
связанных с работой с сервером. И одним из главных критериев в разработке Asmy была простота.
SSH консоль доступа к серверу - это мощный инструмент его управления, но не самый простой.
Asmy поможет настроить web-сервер, настроить обработку запросов на доменные имена,
поможет настроить и проконтролировать работу Docker контейнеров, упростит работу с файловыми хранилищами и многое другое.

## Сборка документации

Сайт использует Docus 5 как Nuxt layer вместо прежнего `@nuxt-themes/docus`.
Контент остаётся в `content/`, ресурсы — в `public/`. Версии закреплены в
`package.json`, `pnpm-lock.yaml` и Dockerfile. Для локальной работы использовать
Node 24 LTS и pnpm из `packageManager`:

```sh
pnpm install --frozen-lockfile
pnpm typecheck
pnpm lint
pnpm generate
```

`generate` создаёт `.output/public`, который Docker image обслуживает через Nginx.
Для интерактивной локальной проверки запустить `pnpm dev`. На Windows проверены
поиск, переходы между статьями и изменение Markdown через HMR; static image
проверен отдельно. Локальные установки, запуски и проверки агентам разрешены
владельцем; публикация и удалённый deploy требуют отдельного запроса.
`nitro.prerender.autoSubfolderIndex: true` необходим для сохранения адресов без
`.html`: каждый route получает свой `index.html`. `failOnError: true` запрещает
публикацию с ошибкой prerender. На Windows с junction Nuxt проверки запускать из
канонического пути checkout: генерация относительных module paths иначе может
ломать ESLint/prerender imports.

Главная страница находится в `content/index.md`: стандартные `u-page-hero`,
`u-page-section`, `u-page-grid` и `u-page-card` задают контейнеры, карточки
возможностей и блок запуска. Собственные компоненты и отдельная тема не нужны.
Навигация разделов задаётся `.navigation.yml`. Старые Pinceau tokens и MDC `list`
заменены настройками Nuxt UI и обычными Markdown списками. Автоматическая OG
генерация отключена: сохранена прежняя глобальная картинка `https://asmy.pro/og_image.jpg`.

## Ограничения зависимостей

TypeScript оставлен на совместимой с Vue tooling ветке 6. Патч Docus исправляет
augmentation `AppConfig` в `@nuxt/schema`; удалить его после upstream исправления.
Override `@nuxt/devtools>simple-git` и однострочный patch импорта Devtools позволяют
использовать исправленную ветку Git adapter. Override `fontless>esbuild` устраняет
advisory Windows development server. После поддержки исправленных версий upstream
соответствующие overrides/patches нужно удалить.

`pnpm peers check` сообщает о двух optional peer требованиях `unctx@3.0.1`
(`oxc-parser >=0.140`, `unplugin ^3.3`) к версиям родительской цепочки Nuxt.
Generate, typecheck и browser smoke проходят; принудительно заменять общие parser
и plugin версии других Nuxt-пакетов ради подавления этого предупреждения не нужно.

Audit сохраняет два high advisory без patched release в build/dev цепочке:
[node-forge](https://github.com/advisories/GHSA-86w9-cpqp-85rv) и
[braces](https://github.com/advisories/GHSA-vfj7-8cjw-p6xm). Финальный image содержит
статические файлы и Nginx, без Node runtime.
