run:
	@docker run -p 80:80 billchee1997/custom_nginx:0.1.0

up:
	@docker-compose build
	@docker-compose up

down:
	@docker-compose down

service:
	@docker service create --name custom-nginx billchee1997/custom_nginx:0.1.0

push:
	@docker push billchee1997/custom_nginx:0.1.0