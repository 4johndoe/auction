init: down-clear pull build up api-init

restart: down up

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

down-clear:
	docker-compose down -v --remove-orphan

pull:
	docker-compose pull

build:
	docker-compose build

api-init: api-composer-install

api-composer-install:
	docker-compose run --rm api-php-cli composer install

