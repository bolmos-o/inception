CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%';
GRANT ALL ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
