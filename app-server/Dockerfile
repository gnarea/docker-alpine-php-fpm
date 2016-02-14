FROM alpine:3.3

ENV NGINX_VERSION="1.8.1-r0"

RUN \
    apk add --no-cache "nginx=${NGINX_VERSION}" && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY reverse-proxy.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
