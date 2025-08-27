FROM php:8.4-cli
COPY ./html /var/www/html
WORKDIR /var/www/html