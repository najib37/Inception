FROM 		debian:bullseye
RUN			apt update;
RUN 		apt install -y nginx openssl
RUN 		rm -rf /etc/nginx/conf.d/* /etc/nginx/sites-enabled/*; \
 			openssl req -x509 -nodes -days 365 \
			-subj "/C=CA/ST=QC/O=najibLLC, Inc./CN=nramadan.42.fr" \
			-addext "subjectAltName=DNS:nramadan.42.fr" -newkey rsa:2048 \
			-keyout /etc/ssl/private/nginx.key \
			-out /etc/ssl/certs/nginx.crt;
RUN 		echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 		443
# CMD 		["/usr/sbin/nginx -g "daemon off;"]
