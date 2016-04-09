FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    addgroup www-data && \
    adduser www-data www-data && \
    echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache php-fpm libcgroup-tools@testing && \
    rm /etc/php/php.ini

COPY php-fpm.conf /etc/php/
COPY default.ini /etc/php/conf.d/
COPY php-fpm-wrapper /usr/bin/

EXPOSE 9000

CMD ["php-fpm-wrapper"]
