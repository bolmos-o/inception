FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir /var/run/mysqld

RUN chmod 777 /var/run/mysqld

COPY init.sql .

EXPOSE 3306

CMD [ "mysqld", "--bind-address=mariadb", "--init-file=/init.sql" ]
