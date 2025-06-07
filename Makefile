export DATABASE_HOST=db
export DATABASE_NAME=postgres
export DATABASE_USERNAME=postgres
export DATABASE_PASSWORD=password

setup:
	docker-compose run --rm app make setup

start:
	docker compose up --abort-on-container-exit

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
