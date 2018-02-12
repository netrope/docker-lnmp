FROM php:7.2.2-fpm
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"

COPY php.ini /usr/local/php7/etc/
COPY php-fpm.conf /usr/local/php7/etc/

RUN apt-get update --fix-missing \
    && apt-get install -y libpng-dev libfreetype6-dev libxml2-dev \
    && docker-php-ext-install mysqli pdo_mysql zip bcmath calendar soap \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \

#RUN docker-php-ext-install gd \
#    && docker-php-ext-install mysqli

#COPY php7.service /usr/lib/systemd/system/
#COPY install.sh /usr/local/php7/

#RUN /bin/bash -c "cd /usr/local/php7/ && chmod +x install.sh && ./install.sh"

#ENTRYPOINT  [ "/usr/sbin/init"]
#ENTRYPOINT ["/usr/local/php7/sbin/php-fpm", "-D"]
#CMD ["-y", "/usr/local/php7/etc/php-fpm.conf"]

#bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv
#imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql
# pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml
#  snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter
#   xsl zend_test zip