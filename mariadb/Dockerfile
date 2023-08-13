FROM debian:buster

RUN apt update
SHELL ["bash", "-c"]
RUN apt install -y mariadb-server;


COPY --chmod=755 ./script.sh /home/script.sh
# RUN service mysql start; mysql -e "source /home/script.sql";

CMD ["./home/script.sh"]
