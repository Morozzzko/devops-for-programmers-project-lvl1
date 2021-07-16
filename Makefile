.PHONY: server test compose-test ci

server:
	npm start

test:
	npm test

compose-install:
	docker-compose run app npm install

compose-server:
	docker-compose up

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

ci: compose-test

