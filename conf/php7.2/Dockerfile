FROM centos
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"

COPY php7.service /usr/lib/systemd/system/
COPY install.sh /usr/local/php7/

RUN /usr/local/php7/install.sh

ENTRYPOINT  [ "/usr/sbin/init"]

