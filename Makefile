
dev:
	docker run --name cinema_db -e POSTGRES_USER=$$POSTGRES_USER -e POSTGRES_PASSWORD=$$POSTGRES_PASSWORD -p $$POSTGRES_PORT:5432 -d postgres
	python manage.py runserver 0.0.0.0:8000

dev_stop:
	docker container stop cinema_db
	docker container rm cinema_db

build:
	docker-compose -f docker/docker-compose.yml build

start:
	docker-compose -f docker/docker-compose.yml up
	docker-compose -f docker/docker-compose.yml stop