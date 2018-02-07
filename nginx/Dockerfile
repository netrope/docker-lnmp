FROM nginx:1.13.8
MAINTAINER Rojay_Ren <rojay.ren@gmail.com>

ENV TZ "Asia/Shanghai"

ADD nginx.conf /usr/local/nginx/conf/nginx.conf
ADD vhost/* /usr/local/nginx/conf/vhost/


EXPOSE 80 443
#启动nginx
ENTRYPOINT ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
