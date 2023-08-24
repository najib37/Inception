
#!/bin/bash

mariadbd-safe --nowatch
sleep 2
mysql -e \
	"CREATE USER IF NOT EXISTS '$WP_USER'@'wordpress.internalNet' IDENTIFIED BY '$WP_PASS';
	create database IF NOT EXISTS wordpressdb;
	grant all privileges on wordpressdb.* to '$WP_USER'@'wordpress.internalNet';
	ALTER USER 'root'@'localhost' IDENTIFIED BY '$DBROOTPASS';
	flush privileges;"
mariadb-admin -uroot -p"$DBROOTPASS" shutdown
sed -i 's/127.0.0.1/mariadb/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sleep 1
exec mariadbd-safe
