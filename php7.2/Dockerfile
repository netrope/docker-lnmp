FROM php:7.2.2-fpm
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"
RUN apt-get update --fix-missing \
    && apt-get install -y wget zip libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev libmemcached-dev \
    && docker-php-ext-install mysqli pdo_mysql zip bcmath calendar soap exif \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && cd /usr/local/src && wget http://pecl.php.net/get/redis-3.1.6.tgz \
    && tar -xvf redis-3.1.6.tgz && cd redis-3.1.6 \
    && phpize && ./configure && make && make install \
    && docker-php-ext-enable redis

############# 安装扩展 Memcached 3.0.4 #################
RUN cd /usr/local/src \
    && wget https://github.com/php-memcached-dev/php-memcached/archive/v3.0.4.tar.gz \
    && tar -xvf v3.0.4.tar.gz && cd php-memcached-3.0.4 \
    && phpize && ./configure --disable-memcached-sasl  \
    && make && make install && docker-php-ext-enable memcached \
    && cd /usr/local/src && rm -rf *

############# 安装扩展 MongoDB 3.0.4 #################
RUN cd /usr/local/src \
    && wget https://pecl.php.net/get/mongodb-1.4.0.tgz \
    && tar -xvf mongodb-1.4.0.tgz && cd mongodb-1.4.0 \
    && phpize && ./configure && make && make install && docker-php-ext-enable mongodb \
    && cd /usr/local/src && rm -rf *

############# 安装扩展 Swoole 2.1.0 #################
RUN cd /usr/local/src \
    && wget -O swoole-2.1.0.zip https://github.com/swoole/swoole-src/archive/v2.1.0.zip \
    && unzip swoole-2.1.0.zip && cd swoole-src-2.1.0 \
    && phpize && ./configure && make && make install \
    && docker-php-ext-enable swoole \
    && cd /usr/local/src && rm -rf *

############# 安装扩展 Yaf 3.0.6 #######
RUN cd /usr/local/src \
    && wget http://pecl.php.net/get/yaf-3.0.6.tgz \
    && tar -xvf yaf-3.0.6.tgz && cd yaf-3.0.6 \
    && phpize && ./configure && make && make install \
    && docker-php-ext-enable yaf \
    && cd /usr/local/src && rm -rf *

############# 安装扩展 Xdebug 2.6.0 #######
RUN cd /usr/local/src \
    && wget https://xdebug.org/files/xdebug-2.6.0.tgz \
    && tar -xvf xdebug-2.6.0.tgz && cd xdebug-2.6.0 \
    && phpize && ./configure && make && make install \
    && docker-php-ext-enable xdebug \
    && cd /usr/local/src && rm -rf *


#bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv
#imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql
# pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml
#  snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter
#   xsl zend_test zip