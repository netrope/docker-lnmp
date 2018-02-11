#!/bin/bash

#   1：su -
#   2：/datadisk/website/docker-lnmp/conf/php7.2/install-php7.2.2.sh
version="7.2.2"

yum update -y
yum install -y wget cc gcc libxml2 libxml2-devel openssl openssl-devel curl curl-devel gd gd-devel

wget -O /usr/local/src/php-${version}.tar.gz  http://hk2.php.net/get/php-${version}.tar.gz/from/this/mirror
cd /usr/local/src
tar -xvf php-${version}.tar.gz
rm -f php-${version}.tar.gz
cd php-${version}

groupadd -r www && useradd -r -g www -s /bin/false -d /usr/local/php -M php

ln -s /usr/local/php7/bin/php /usr/local/bin/php
ln -s /usr/local/php7/bin/phpize /usr/local/bin/phpize