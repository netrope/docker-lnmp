#!/bin/bash

path=$(cd `dirname $0`;pwd)
test -d ${path}/run-files/ || mkdir -p ${path}/run-files/
test -d ${path}/run-files/nginx || mkdir -p ${path}/run-files/nginx
test -d ${path}/run-files/redis || mkdir -p ${path}/run-files/redis
test -d ${path}/run-files/mysql || mkdir -p ${path}/run-files/mysql

./nginx/run.sh
./redis/run.sh
./mysql/run.sh
