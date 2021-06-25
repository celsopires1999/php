FROM composer as composer

FROM php:7.3.28

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update

RUN apt-get install -y zip 

RUN apt-get install -y sqlite3
