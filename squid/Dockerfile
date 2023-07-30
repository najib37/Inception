FROM 		debian:buster
RUN			apt update; apt install -y squid;
ADD  		myconf.conf /etc/squid/conf.d/
COPY --chmod=777 script.sh /home/script.sh
# RUN 		useradd squid -p 1234 && chown squid:squid /var/spool/squid;

# CMD ["squid", "-z", "-d 2"]
CMD ["squid", "-NCd1"]
# CMD ["/etc/init.d/squid", "start"]
# CMD ["bash", "-c", "squid -d -2"]
# CMD ["bash", "-c", "/home/script.sh"]
