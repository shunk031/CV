APP=lualatex-for-my-cv
YML=.devcontainer/docker-compose.yml

.PHONY: help
help:
	@cat Makefile

cv.pdf:
	cd src && latexmk -quiet

.PHONY: clean
clean:
	cd src && latexmk -c

.PHONY: watch
watch:
	find src -path '*.tex' -or -path '*.cls' | entr make cv.pdf

#
# Helper commands for the docker-compose
#

.PHONY: docker-compose-up
docker-compose-up:
	docker-compose -f $(YML) up -d

.PHONY: docker-compose-down
docker-compose-down:
	docker-compose -f $(YML) down

.PHONY: docker-compose-make-pdf
docker-compose-make-pdf:
	docker-compose -f $(YML) exec -T $(APP) make cv.pdf

.PHONY: docker-compose-make-clean
docker-compose-make-clean:
	docker-compose -f $(YML) exec -T $(APP) make clean

.PHONY: docker-compose-make-watch
docker-compose-make-watch:
	docker-compose -f $(YML) exec -T $(APP) make watch
