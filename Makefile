server:
	npx nodos server

test:
	npm -s test

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

ci: compose-test