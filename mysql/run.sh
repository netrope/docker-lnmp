docker run -d --name mysql --net=host -p 3306:3306 \
	-v /datadisk/docker-lnmp/mysql/my.cnf:/etc/mysql/my.cnf \
	-v /datadisk/docker-run/mysql/log:/var/log/mysql \
	netrope/mysql
#	-v /datadisk/docker-run/mysql/lib:/var/lib/mysql \
#	-v /mnt/mysql/lib:/var/lib/mysql \
