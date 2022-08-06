#!/bin/bash

wp core download --allow-root --path=/var/www/html

wp config create --skip-check --allow-root --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbhost=$WORDPRESS_DB_HOST --dbpass=$WORDPRESS_DB_PASSWORD --path=/var/www/html

wp core install --allow-root --url=$DOMAIN_NAME --title=inception --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --path=/var/www/html

wp user create --allow-root $WORDPRESS_USER $WORDPRESS_USER_EMAIL --user_pass=$WORDPRESS_USER_PASSWORD --path=/var/www/html

wp plugin update --allow-root --all --path=/var/www/html

exec "$@"
