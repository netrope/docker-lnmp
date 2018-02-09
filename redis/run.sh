docker run -d --name redis --net=host -p 3306:3306 \
	-v /datadisk/docker-lnmp/redis:/etc/redis \
	netrope/redis \
    redis-server /etc/redis/redis.conf