FROM 		debian:buster
RUN			apt update; apt install -y nginx openssl;
RUN 		rm -rf /etc/nginx/conf.d/* /etc/nginx/sites-enabled/*; \
 			openssl req -x509 -nodes -days 365 \
			-subj "/C=CA/ST=QC/O=najibLLC, Inc./CN=nramadan.42.fr" \
			-addext "subjectAltName=DNS:nramadan.42.fr" -newkey rsa:2048 \
			-keyout /etc/ssl/private/nginx.key \
			-out /etc/ssl/certs/nginx.crt;
RUN 		echo "daemon off;" >> /etc/nginx/nginx.conf

COPY 		./nginx.conf /etc/nginx/conf.d/ssl-config.conf
EXPOSE 		443
CMD 		["nginx"]
