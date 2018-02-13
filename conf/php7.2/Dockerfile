FROM php:7.2.2-fpm
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

RUN apt-get update --fix-missing \
    && apt-get install -y wget zip libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev \
    && docker-php-ext-install mysqli pdo_mysql zip bcmath calendar soap \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

RUN cd /usr/local/src \
    && wget -O swoole-2.1.0.zip https://github.com/swoole/swoole-src/archive/v2.1.0.zip \
    && unzip swoole-2.1.0.zip && cd swoole-src-2.1.0 \
    && phpize && ./configure --prefix=/usr/local/swoole && make && make install \
    && cd / && rm -rf /usr/local/src/swoole-src-2.1.0 && rm -f swoole-2.1.0.zip

ENV TZ "Asia/Shanghai"

#bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv
#imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql
# pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml
#  snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter
#   xsl zend_test zip