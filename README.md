# docker实现Django项目部署(供参考)

## 镜像以及目录说明
	> redis
		1. redis镜像版本redis:5
		2. 文件挂载:
			+ 宿主机compose/redis/redis.conf -> /etc/redis/redis.conf
	> mysql
		1. mysql镜像版本:mysql:5.7
		2. 文件挂载:
			+ 宿主机 compose/mysql/conf/my.cnf -> /etc/mysql/my.cnf
			+ 宿主机 compose.mysql/init/ -> /docker-entrypoint-initdb.d
	> web服务
		1. Dockerfile文件位置: ./django_docker
		2. 目录挂载:
			+ ./django_docker -> /var/www/html/django_docker
			+ ./django_docker_media -> /var/www/html/django_docker/media
			+ compose/uwsgi -> /tmp
	> nginx
		1. Dockerfile文件位置: ./compose/nginx
		2. 目录挂载
			+ ./django_docker/static -> /usr/share/nginx/html/static
			+ ./compose/nginx/ssl -> /usr/share/nginx/ssl
			+ ./compose/nginx/log:/var/log/nginx/log
            + django_docker_media_vol:/usr/share/nginx/html/media
## 端口映射关系
	1. redis: 6378:6379
	2. mysql: 3307:3306
	3. nginx: 8525:80