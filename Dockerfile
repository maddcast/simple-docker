FROM ubuntu:18.04

MAINTAINER maddcast <maddcast@github.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y apache2
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y php7.2

COPY ./check.php /var/www/html/check.php

EXPOSE 80

ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND
