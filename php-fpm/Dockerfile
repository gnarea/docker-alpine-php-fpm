FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    addgroup www-data && \
    adduser www-data www-data && \
    apk add --no-cache php-fpm

COPY php-fpm.conf php-fpm-pool.conf /etc/php/

ENV WEB_APP_PATH="/opt/web-app"
ONBUILD VOLUME "${WEB_APP_PATH}"

EXPOSE 9000

CMD ["php-fpm"]
