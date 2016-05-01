FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    addgroup www-data && \
    adduser www-data www-data && \
    echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache php-fpm nginx gettext libcgroup-tools@testing && \
    rm /etc/php/php.ini

COPY php-fpm.conf /etc/php/
COPY default.ini /etc/php/conf.d/
COPY nginx.conf.template /etc/nginx/
COPY php-fpm-wrapper nginx-wrapper /usr/local/sbin/

EXPOSE 80 9000

CMD ["php-fpm-wrapper"]
