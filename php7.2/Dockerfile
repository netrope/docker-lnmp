FROM php:7.2.2-fpm
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"

############# install require package #############
RUN apt-get update --fix-missing \
    && apt-get install -y wget zip libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev libmemcached-dev inetutils-ping net-tools vim librabbitmq-dev librdkafka-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install mysqli pdo_mysql zip bcmath calendar soap exif gd

############# install php-extend #################
RUN cd /usr/local/src && wget http://pecl.php.net/get/amqp-1.9.3.tgz && tar -xvf amqp-1.9.3.tgz && cd amqp-1.9.3 \
    && phpize && ./configure && make && make install && docker-php-ext-enable amqp

RUN cd /usr/local/src && wget http://pecl.php.net/get/swoole-4.2.5.tgz && tar -xvf swoole-4.2.5.tgz && cd swoole-4.2.5 \
    && phpize && ./configure && make && make install && docker-php-ext-enable swoole

RUN cd /usr/local/src && wget http://pecl.php.net/get/yaf-3.0.6.tgz && tar -xvf yaf-3.0.6.tgz && cd yaf-3.0.6 \
    && phpize && ./configure && make && make install && docker-php-ext-enable yaf

RUN cd /usr/local/src && wget http://pecl.php.net/get/xdebug-2.6.1.tgz && tar -xvf xdebug-2.6.1.tgz && cd xdebug-2.6.1 \
    && phpize && ./configure && make && make install && docker-php-ext-enable xdebug

RUN cd /usr/local/src && wget http://pecl.php.net/get/redis-3.1.6.tgz && tar -xvf redis-3.1.6.tgz && cd redis-3.1.6 \
    && phpize && ./configure && make && make install && docker-php-ext-enable redis

RUN cd /usr/local/src && wget http://pecl.php.net/get/memcached-3.0.4.tgz && tar -xvf memcached-3.0.4.tgz && cd memcached-3.0.4 \
    && phpize && ./configure --disable-memcached-sasl && make && make install && docker-php-ext-enable memcached

RUN cd /usr/local/src && wget https://pecl.php.net/get/mongodb-1.4.0.tgz && tar -xvf mongodb-1.4.0.tgz && cd mongodb-1.4.0 \
    && phpize && ./configure && make && make install && docker-php-ext-enable mongodb

RUN cd /usr/local/src && wget http://pecl.php.net/get/rdkafka-3.0.5.tgz && tar -xvf rdkafka-3.0.5.tgz && cd rdkafka-3.0.5 \
    && phpize && ./configure && make && make install && docker-php-ext-enable rdkafka

RUN cd /usr/local/src && rm -rf * && rm -rf *.*


############# set socks5 proxy #######
# CMD [ "export" ,"ALL_PROXY=socks5://127.0.0.1:9090"]
    


#bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv
#imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql
# pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml
#  snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter
#   xsl zend_test zip