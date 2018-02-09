#!/bin/bash

path=$(cd `dirname $0`;pwd)

test -d ${path}/../run-files/ || mkdir -p ${path}/../run-files/
test -d ${path}/../run-files/php7.2 || mkdir -p ${path}/../run-files/php7.2

docker run -d --name php7.2 --net=host -p 9000:9000 \
    -v /datadisk/:/datadisk/ \
    netrope/php7.2
#	-v /datadisk/docker-lnmp/redis/redis.conf:/etc/redis.conf \
