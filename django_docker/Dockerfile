# Web容器的镜像
FROM python:3.7

MAINTAINER wangdong<wang10272516@163.com>

ENV PYTHONUNBUFFERED 1

COPY pip.conf /root/.pip/pip.conf

RUN mkdir -p /var/www/html/django_docker

WORKDIR /var/www/html/django_docker

COPY . /var/www/html/django_docker

RUN /usr/local/bin/python -m pip install --upgrade pip && pip install -r requirements.txt \
&& sed -i 's/\r//' ./start.sh && chmod +x ./start.sh

