#!/bin/sh
yum -y install httpd php mysql php-mysql
chkconfig httpd on
systemctl start httpd
if [ ! -f /var/www/html/immersion-day-app.tar.gz ]; then
   cd /var/www/html
   wget https://kr-id-general.workshop.aws/sh/immersion-day-app.tar.gz
   tar xvfz immersion-day-app.tar.gz
   chown apache:root /var/www/html/rds.conf.php
fi
yum -y update
