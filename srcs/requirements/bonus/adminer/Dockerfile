FROM debian:buster

RUN apt update && apt install -y php-fpm adminer

RUN /etc/init.d/php7.3-fpm start

RUN echo "listen = 8080" >> /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir -p /var/www

RUN ln -s /usr/share/adminer/adminer /var/www/adminer

CMD [ "php-fpm7.3", "--nodaemonize" ]
