#!/bin/bash
wp --allow-root --path=/var/www/wordpress/ config create --dbname=wordpressdb --dbuser=najib --dbpass=1234 --dbhost=mariadb.internalNet --quiet
wp --allow-root --path=/var/www/wordpress  core install --url=nramadan.42.fr --title="najib LLC" --admin_user="najib" --admin_password=1234 --admin_email=test@test.com --quiet
mkdir /var/run/php/
# sleep 10000
exec php-fpm7.4 -F -R
