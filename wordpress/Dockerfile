FROM		debian:buster AS base
WORKDIR		/var/www/
ADD			https://wordpress.org/latest.tar.gz .
ADD			https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /home/wp
RUN			export tar=$(ls); tar -xf $tar; rm -rf $tar

FROM		debian:buster
WORKDIR		/var/www/wordpress/
RUN			apt update; apt install -y php php7.3-fpm php7.3-mysql mariadb-client
COPY		--from=base --chown=www-data /var/www/ /var/www/
COPY		--from=base --chmod=755 /home/wp /bin/wp
COPY		./php-fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY		--chmod=755 ./wp-setup.sh /home/wp-setup.sh
CMD			["bash", "/home/wp-setup.sh"]
