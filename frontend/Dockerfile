# build environment
FROM --platform=linux/amd64 node:18.15.0-alpine3.17 as react-build

WORKDIR /app

COPY . .

RUN yarn

RUN yarn build

# server environment
FROM --platform=linux/amd64 nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/configfile.template

ENV PORT 80

ENV HOST 0.0.0.0

RUN sh -c "envsubst '\$PORT'  < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf"

COPY --from=react-build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]