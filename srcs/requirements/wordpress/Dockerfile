FROM debian:buster

RUN apt-get update && apt-get install -y wget php-fpm php-json php-mysql

RUN mkdir -p /var/www

RUN cd /var/www && wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && mv wordpress html 

RUN /etc/init.d/php7.3-fpm start

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD [ "php-fpm7.3", "--nodaemonize" ]
