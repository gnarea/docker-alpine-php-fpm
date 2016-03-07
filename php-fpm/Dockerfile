FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    addgroup www-data && \
    adduser www-data www-data && \
    echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache php-fpm libcgroup-tools@testing

COPY php-fpm.conf php-fpm-pool.conf /etc/php/
COPY php-fpm-wrapper /usr/bin/

EXPOSE 9000

CMD ["php-fpm-wrapper"]
