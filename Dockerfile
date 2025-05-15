FROM ubuntu:22.04

RUN mkdir /packages

RUN apt-get update && \
    apt-get install -y --download-only \
    apache2 \
    mysql-server \
    php \
    php-mysql \
    php-curl \
    php-xml \
    php-mbstring \
    php-zip \
    php-gd \
    php-json \
    php-ldap \
    && cp -r /var/cache/apt/archives/* /packages/ \
    && apt-get clean
