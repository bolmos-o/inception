FROM debian:buster

RUN apt-get update && apt-get install -y wget php-fpm php-json php-mysql

RUN mkdir -p /var/www

RUN cd /var/www && wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && mv wordpress html 

RUN /etc/init.d/php7.3-fpm start

RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/g' /etc/php/7.3/fpm/pool.d/www.conf

COPY wp-config.php /var/www/html

CMD [ "php-fpm7.3", "--nodaemonize" ]
