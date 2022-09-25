all:
	docker-compose -f srcs/docker-compose.yml up --build -d

eval:
	docker stop $$(docker ps -qa)
	docker rm -f $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q) 2>/dev/null

logs:
	docker-compose -f srcs/docker-compose.yml logs

clean:
	docker-compose -f srcs/docker-compose.yml down
	docker image prune -a

vclean:
	docker volume rm $$(docker volume ls -q)

# https://jinigo.42.fr/wp-login.php
