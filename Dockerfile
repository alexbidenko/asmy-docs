FROM node:24.21.0-alpine3.24 As base

RUN npm i --global --no-update-notifier --no-fund pnpm@12.11.2
FROM base as dependencies

WORKDIR /app

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY patches ./patches

RUN pnpm install --frozen-lockfile

FROM base as builder

WORKDIR /app

COPY --from=dependencies /app/node_modules ./node_modules
COPY . .

RUN pnpm generate

FROM nginx:1.30.5-alpine3.24

COPY --from=builder --chown=nginx:nginx /app/.output/public /usr/share/nginx/html

RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /etc/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /usr/share/nginx && \
    chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
