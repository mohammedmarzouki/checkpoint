FROM debian:buster

RUN apt update
RUN apt install -y nginx
RUN apt install -y vim
COPY conf/nginx.conf /etc/nginx/sites-available/default
COPY conf/server.crt /etc/nginx/
COPY conf/server.key /etc/nginx/

CMD nginx -g "daemon off;"