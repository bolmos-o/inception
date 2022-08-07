FROM debian:buster

RUN apt-get update && apt-get install -y ssl-cert nginx 

COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
