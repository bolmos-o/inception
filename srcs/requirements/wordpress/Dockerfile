FROM debian:buster

RUN apt-get update && apt-get install -y wget php-fpm php-json php-mysql

RUN mkdir -p /var/www

RUN /etc/init.d/php7.3-fpm start

RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/g' /etc/php/7.3/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root --path=/var/www/html

COPY wp-config.php /var/www/html/

RUN wp --info
#RUN wp config create --allow-root --dbname=wordpress --dbuser=wordpress --dbhost=mariadb --path=/var/www/html

CMD [ "php-fpm7.3", "--nodaemonize" ]
