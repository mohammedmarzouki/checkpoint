FROM debian:buster

RUN apt update 

RUN apt-get install -y php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml \
	wget mariadb-client tar

COPY conf/wordpress /var/www/html/

COPY conf/wp /bin

COPY tools/* /

RUN bash build.sh

EXPOSE 9000

CMD bash run.sh
