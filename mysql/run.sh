docker run -d --name mysql --net=host -p 3306:3306 \
	-v /datadisk/docker-lnmp/mysql/my.cnf:/etc/mysql/my.cnf \
	-v /datadisk/docker-lnmp/mysql/lib:/var/lib/mysql \
	-v /datadisk/docker-lnmp/mysql/log:/var/log/mysql \
	netrope/mysql
