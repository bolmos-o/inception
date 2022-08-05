#!/bin/bash

wp core download --allow-root --path=/var/www/html

wp config create --skip-check --allow-root --dbname=wordpress --dbuser=wordpress --dbhost=mariadb --path=/var/www/html

wp core install --allow-root --url=localhost --title=inception --admin_user=supervisor --admin_password=secret --admin_email=bolmos-o@student.42.fr --path=/var/www/html

wp plugin update --allow-root --all --path=/var/www/html

exec php-fpm7.3 --nodaemonize
