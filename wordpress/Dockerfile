FROM debian:stable AS base

WORKDIR /var/www/
ADD https://wordpress.org/latest.tar.gz .
RUN export tar=$(ls); tar -xf $tar; rm -rf $tar

FROM debian:stable
VOLUME wp-website
COPY --from=base --chown=www-data /var/ /var/
RUN  apt update; apt install -y php php7.4-fpm php7.4-mysql
EXPOSE 9000
COPY ./php-fpm.conf /etc/php/7.4/fpm/pool.d/www.conf
CMD service start php7.4-fpm
