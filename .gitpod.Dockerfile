FROM composer as composer

FROM php:7.4.13

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update
