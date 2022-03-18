#!/bin/bash

chmod +x /bin/wp

#https://developer.wordpress.org/cli/commands/user/create/
# wp core config --allow-root --dbname=$DBName --dbuser=$DBUser --dbpass=$DBPass --path="/var/www/html/"

# wp core install --allow-root --url=mmarzouk.42.fr --title="inception" --admin_name=$WPUSR --admin_password=$WPASS --path="/var/www/html/"

# wp user create $WPUSR2 $WPUSR2@example.com --role=author --user_pass=$WPASS2 --allow-root --path="/var/www/html/"