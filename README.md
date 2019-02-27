### 部署 docker-lnmp 环境 

###一、部署

终端进入此目录，执行` ./start `

memcache、mongodb、rabbitmq 这三个服务是可选服务，如果用不上（比如前端开发），先将`docker-compose.yml`文件里的相应节点删掉，然后再执行 ` ./start `

站点根目录应于此目录处于同一层级。

###二、配置

- nginx: `conf/nginx.conf` 、`conf/vhost/*`

nginx主要配置`conf/vhost/*`里的文件，用于新增、配置站点

站点配置好以后，别忘了将相应域名写到hosts里

- php: `conf/php7.0/*`

php5.6 端口：9056

php7.0 端口：9070

php7.1 端口：9071

php7.2 端口：9072

php7.3 端口：9073

目前暂只提供php7.0服务，其它版本后续补充

其它服务的配置雷同，略

###三、重启

如果修改了配置，重启相应服务才能生效：`docker restart 服务名1 服务名2 服务名3`

可用的服务名有：nginx、php7.0、redis、mysql、memcached、mongodb、rabbitmq

###四、其它

在一个容器中调用其它容器服务时，不能写`127.0.0.1`或`localhost`，必须写服务名

例如：nginx的站点配置中，fastcgi_pass节点的值要写成`php7.0:9070`，不能写`localhost:9070`

相应的，php代码中对mysql的配置，其host值也必须写成`mysql`

从宿主机直接访问时，可以使用`localhost`或`127.0.0.1`，例如使用数据库客户端连接时，就可以这样配置