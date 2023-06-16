FROM debian:buster

SHELL ["bash", "-c"]

COPY --chmod=755 ./script.sh /home/script.sh

RUN apt update; apt install -y vim mariadb-server;
# RUN service mysql start; mysql -e "source /home/script.sql";

CMD ["./home/script.sh"]
