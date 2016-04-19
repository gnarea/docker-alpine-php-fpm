FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    addgroup www-data && \
    adduser www-data www-data && \
    echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache php-fpm nginx libcgroup-tools@testing && \
    rm /etc/php/php.ini

COPY php-fpm.conf /etc/php/
COPY default.ini /etc/php/conf.d/
COPY php-fpm-wrapper /usr/bin/
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 9000

CMD ["php-fpm-wrapper"]
