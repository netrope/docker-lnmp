#!/bin/bash

version="7.2.2"

yum update -y
yum install -y wget cc gcc libxml2 libxml2-devel openssl openssl-devel curl curl-devel gd gd-devel

wget -O /usr/local/src/php-${version}.tar.gz  http://hk2.php.net/get/php-${version}.tar.gz/from/this/mirror
cd /usr/local/src
tar -xvf php-${version}.tar.gz
rm -f php-${version}.tar.gz
cd php-${version}

groupadd -r www && useradd -r -g www -s /bin/false -d /usr/local/php7 -M www

cd /usr/local/src/php-7.2.2
./configure --prefix=/usr/local/php7 \
    --exec-prefix=/usr/local/php7 \
    --bindir=/usr/local/php7/bin \
    --sbindir=/usr/local/php7/sbin \
    --includedir=/usr/local/php7/include \
    --libdir=/usr/local/php7/lib/php \
    --mandir=/usr/local/php7/php/man \
    --with-config-file-path=/usr/local/php7/etc \
    --with-mysql-sock=/var/lib/mysql/mysql.sock \
    --with-mhash \
    --with-openssl \
    --with-mysqli=shared,mysqlnd \
    --with-pdo-mysql=shared,mysqlnd \
    --with-gd \
    --with-iconv \
    --with-zlib \
    --enable-zip \
    --enable-inline-optimization \
    --disable-debug \
    --disable-rpath \
    --enable-shared \
    --enable-xml \
    --enable-bcmath \
    --enable-shmop \
    --enable-sysvsem \
    --enable-mbregex \
    --enable-mbstring \
    --enable-ftp \
    --enable-pcntl \
    --enable-sockets \
    --with-xmlrpc \
    --enable-soap \
    --without-pear \
    --with-gettext \
    --enable-session \
    --with-curl \
    --with-jpeg-dir \
    --with-freetype-dir \
    --enable-opcache \
    --enable-fpm \
    --with-fpm-user=www \
    --with-fpm-group=www \
    --without-gdbm \
    --disable-fileinfo

make && make install
cd ..

ln -s /usr/local/php7/bin/php /usr/local/bin/php
ln -s /usr/local/php7/bin/phpize /usr/local/bin/phpize

rm -rf /usr/local/src/php-${version}.tar.gz
rm -rf /usr/local/src/php-${version}


