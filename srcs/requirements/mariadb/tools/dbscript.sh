#!/bin/bash
# usermod -d /var/lib/mysql/ mysql

service mysql start 


mysql -e "CREATE DATABASE $DBName;
	GRANT ALL PRIVILEGES ON $DBName.* TO '$DBUser'@'%' IDENTIFIED BY '$DBPass';"#
mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DBRootPass');"
# mysqladmin -u root password $DBRootPass
# mysql -uroot -p$DBRootPass -e "GRANT ALL PRIVILEGES ON $DBName.* TO '$DBUser'@'%' IDENTIFIED BY '$DBPass'; FLUSH PRIVILEGES;" 
# echo 0
service mysql stop
# echo 1
# chown mysql: /var/run/mysqld
# echo 2
# sleep infinity
mysqld_safe --skip-grant-tables # start mysql server without root password