#!/bin/bash
wp --allow-root --path=/var/www/wordpress/ config create --dbname=wordpressdb --dbuser=najib --dbpass=1234 --dbhost=mariadb.internalNet --quiet
wp --allow-root --path=/var/www/wordpress  core install --url=134.122.117.111 --title="najib LLC" --admin_user="najib" --admin_password=1234 --admin_email=test@test.com --quiet
mkdir /var/run/php/
exec php-fpm7.4 -F -R
