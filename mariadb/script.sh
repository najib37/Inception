#!/bin/bash

export DBROOTPASS="r1234" WP_USER="najib" WP_PASS="1234"
sed -i 's/127.0.0.1/mariadb/g' /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql start;
mysql -e \
	"create database IF NOT EXISTS wordpressdb;
	grant all privileges on wordpressdb.* to '$WP_USER'@'wordpress.my_network' identified by '$WP_PASS';
	flush privileges;"
mysqladmin --user=root password "$DBROOTPASS"
service mysql stop
exec mysqld
