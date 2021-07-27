.PHONY: server test compose-test ci setup-dependencies copy-env compose-setup compose-install compose-server ci

server:
	npm start

test:
	npm test

setup-dependencies:
	npm install

copy-env:
	cp .env.example .env

compose-setup: copy-env

compose-install:
	docker-compose run app npm install

compose-server:
	docker-compose up

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

ci: compose-setup compose-test

