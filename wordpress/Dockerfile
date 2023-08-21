FROM		debian:bullseye AS base
WORKDIR		/var/www/
ADD			https://wordpress.org/latest.tar.gz .
ADD			https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /home/wp
RUN			export tar=$(ls); tar -xf $tar; rm -rf $tar

FROM		debian:bullseye
RUN         apt update;
WORKDIR		/var/www/wordpress/
RUN			apt install -y php php-fpm php-mysql mariadb-client sendmail
COPY		--from=base --chown=www-data /var/www/ /var/www/
COPY		--from=base --chmod=755 /home/wp /bin/wp
# COPY		./php-fpm.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY		--chmod=755 ./wp-setup.sh /home/wp-setup.sh
CMD			["bash", "/home/wp-setup.sh"]
