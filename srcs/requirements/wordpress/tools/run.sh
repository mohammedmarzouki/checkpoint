#!/bin/bash

sleep 5
service php7.3-fpm start

# CREATE THE CONFIG FILE
wp config create --dbname=$DBName --dbuser=$DBUser --dbpass=$DBPass --dbhost=mariadb --path=/var/www/html --allow-root

# INSTALL THE SITE
wp core install --url=localhost --title="sdvadab" --admin_name=$DBUser --admin_password=$DBPass --admin_email=dkrgjjr@sddvi.hr --path=/var/www/html --allow-root

# CREAT USERS
# wp user create  $USER2_NAME $USER2_EMAIL --role=$USER2_ROLE --user_pass=$USER2_PASSWORD --path=/var/www/html --allow-root

service php7.3-fpm stop
php-fpm7.3 -F

# sleep infinity
# php-fpm7.3 -F