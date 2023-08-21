FROM debian:bullseye

RUN apt update
RUN apt install -y mariadb-server;
RUN apt install -y vim;
WORKDIR /home/


COPY --chmod=755 ./healthcheck.sh /home/healthcheck.sh
COPY --chmod=755 ./enterypoint.sh /home/enterypoint.sh

CMD ["bash", "-c", "./enterypoint.sh"]
