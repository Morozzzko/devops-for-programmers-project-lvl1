.PHONY: server test compose-test copy-env install ci

server:
	npx nodos server -h 0.0.0.0

test:
	npm -s test

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

ci: compose-test

install:
	npm i

setup: copy-env install

ci: copy-env compose-test

