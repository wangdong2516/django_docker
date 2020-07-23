#!/bin/bash

# 项目启动脚本
python manage.py collectstatic --noinput && python manage.py makemigrations \
&& python manage.py migrate && uwsgi --ini /var/www/html/django_docker/uwsgi.ini
