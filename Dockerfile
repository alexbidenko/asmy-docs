FROM node:18-alpine as builder

WORKDIR /app

COPY . .

RUN yarn install

RUN yarn generate

FROM nginx:stable-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
