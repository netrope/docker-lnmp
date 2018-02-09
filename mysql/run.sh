#!/bin/bash

path=$(cd `dirname $0`;pwd)

test -d ${path}/../run-files/ || mkdir -p ${path}/../run-files/
test -d ${path}/../run-files/mysql || mkdir -p ${path}/../run-files/mysql

docker run -d --name mysql --net=host -p 3306:3306 \
	-v /datadisk/docker-lnmp/mysql/my.cnf:/etc/mysql/my.cnf \
	-v /datadisk/:/datadisk/ \
	netrope/mysql
