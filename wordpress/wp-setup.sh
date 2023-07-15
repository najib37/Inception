#!/bin/bash
wp --allow-root config create --dbname=wordpressdb --dbuser=najib --dbpass=1234 --dbhost=mariadb.my_network --quiet
wp --allow-root core install --url=165.22.17.126 --title="najib LLC" --admin_user="najib" --admin_password=1234 --admin_email=test@test.com --quiet
mkdir /var/run/php/
exec php-fpm7.3 -F -R
