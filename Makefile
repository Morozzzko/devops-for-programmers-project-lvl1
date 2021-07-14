server:
	npx nodos server -h 0.0.0.0

test:
	npm -s test

compose-test:
	docker-compose -f docker-compose.yml up --env-file .env.example --abort-on-container-exit

copy-env:
	cp .env.example .env

ci: compose-test

install:
	npm i

setup: copy-env install
