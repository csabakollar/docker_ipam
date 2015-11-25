FROM ubuntu:trusty
MAINTAINER Csaba Kollar <csaba.kollar@gmail.com>

RUN apt-get update
RUN apt-get install -y supervisor apache2 mysql-server-5.5 php5 php5-mysql php5-cli php5-gmp php-pear php5-mcrypt php5-curl php5-ldap php5-json

RUN rm /var/www/html/index.html
COPY ipam_html.tgz /tmp
RUN tar -xzf /tmp/ipam_html.tgz

RUN a2enmod rewrite
RUN php5enmod mcrypt

ADD supervisor_ipam.conf /etc/supervisor/conf.d/

CMD ["supervisord","-c","/etc/supervisor/conf.d/supervisor_ipam.conf"]
