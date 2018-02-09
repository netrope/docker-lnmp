#!/bin/bash

path=$(cd `dirname $0`;pwd)

test -d ${path}/../run-files/ || mkdir -p ${path}/../run-files/
test -d ${path}/../run-files/nginx || mkdir -p ${path}/../run-files/nginx

docker run -d --name nginx --net=host -p 80:80 -p 443:443 \
	-v /datadisk/docker-lnmp/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
	-v /datadisk/:/datadisk/ \
	netrope/nginx
