FROM debian:buster

RUN apt-get update && apt-get install -y wget php-fpm php-json php-mysql

RUN /etc/init.d/php7.3-fpm start

RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/g' /etc/php/7.3/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www

#RUN wp core download --allow-root --path=/var/www/html

#RUN wp config create --skip-check --allow-root --dbname=wordpress --dbuser=wordpress --dbhost=mariadb --path=/var/www/html

#RUN wp core install --allow-root --url=bolmos-o.42.fr --title=inception --admin_user=supervisor --admin_password=secret --admin_mail=bolmos-o@student.42.fr --path=/var/www/html

COPY ./docker-entrypoint.sh /

RUN chmod 755 docker-entrypoint.sh

CMD [ "/docker-entrypoint.sh" ]
