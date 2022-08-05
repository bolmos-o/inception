CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%';
CREATE USER 'bolmos-o'@'%';
GRANT ALL ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
