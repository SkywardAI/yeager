FILE_NAME:=.env

DOCKER_VOLUME_DIRECTORY:=
METRICS_PATHS:=runs

.PHONY: env
env:
	@echo "DOCKER_VOLUME_DIRECTORY=$(DOCKER_VOLUME_DIRECTORY)" > $(FILE_NAME)
	@echo "METRICS_PATHS=$(METRICS_PATHS)" >> $(FILE_NAME)

.PHONY: build
build: env
	@docker compose -f docker-compose.yaml build


.PHONY: up
up: build
	@docker compose -f docker-compose.yaml up -d


.PHONY: stop
stop:
	@docker compose -f docker-compose.yaml stop
