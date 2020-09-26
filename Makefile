CONTAINER_NAME := node

.PHONY: up
up:
	docker-compose up

.PHONY: down
down:
	docker-compose down

.PHONY: down-v
down-v:
	docker-compose down -v

.PHONY: sh
sh:
	docker-compose run --rm ${CONTAINER_NAME} sh

.PHONY: yarn
yarn:
	docker-compose exec ${CONTAINER_NAME} sh -c "yarn && yarn watch"

.PHONY: proc
execute:
	docker-compose exec ${CONTAINER_NAME} sh -c "yarn && yarn execute"

