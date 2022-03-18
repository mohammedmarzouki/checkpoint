FROM debian:buster

RUN apt update

RUN apt install -y mariadb-server

RUN echo "bind-address            = 0.0.0.0" >>/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/dbscript.sh /

EXPOSE 3306

CMD bash dbscript.sh
