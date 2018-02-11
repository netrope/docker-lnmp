FROM centos
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"

COPY php7.service /usr/lib/systemd/system/
COPY install.sh /usr/local/php7/

RUN /bin/bash -c "cd /usr/local/php7/ && chmod +x install.sh && ./install.sh"

#ENTRYPOINT  [ "/usr/sbin/init"]
ENTRYPOINT ["/usr/local/php7/sbin/php-fpm", "-D"]
CMD ["-y", "/usr/local/php7/etc/php-fpm.conf"]

