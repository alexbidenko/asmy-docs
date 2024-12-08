FROM node:22-alpine As base

RUN npm i --global --no-update-notifier --no-fund pnpm

FROM base as dependencies

WORKDIR /app

COPY package.json pnpm-lock.yaml .npmrc ./

RUN pnpm install --frozen-lockfile

FROM base as builder

WORKDIR /app

COPY --from=dependencies /app/node_modules ./node_modules
COPY . .

RUN pnpm generate

FROM nginx:stable-alpine

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
