NAME=	inception

all:
	docker-compose -f `pwd`/srcs/docker-compose.yml -p ${NAME} up --build -d

stop:
	docker-compose -f `pwd`/srcs/docker-compose.yml -p ${NAME} down --volumes
