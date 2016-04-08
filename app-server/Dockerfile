FROM alpine:3.3

ENV NGINX_VERSION="1.8.1-r0"

RUN apk add --no-cache "nginx=${NGINX_VERSION}"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx"]
