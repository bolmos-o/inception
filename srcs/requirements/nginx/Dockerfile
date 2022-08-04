FROM debian:buster

RUN apt-get update && apt-get install -y ssl-cert nginx 

COPY default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
