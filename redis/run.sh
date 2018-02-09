#!/bin/bash

path=$(cd `dirname $0`;pwd)

test -d ${path}/../run-files/ || mkdir -p ${path}/../run-files/
test -d ${path}/../run-files/redis || mkdir -p ${path}/../run-files/redis

docker run -d --name redis --net=host -p 3306:3306 \
	-v /datadisk/docker-lnmp/redis/redis.conf:/etc/redis.conf \
    -v /datadisk/:/datadisk/ \
    netrope/redis \
    redis-server /etc/redis.conf