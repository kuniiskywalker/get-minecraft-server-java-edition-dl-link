build:
	docker build -t kuniiskywalker/get-minecraft-server-java-edition-dl-link .
.PHONY: build

push: build
	docker push kuniiskywalker/get-minecraft-server-java-edition-dl-link
.PHONY: push

run:
	docker run --rm -it kuniiskywalker/get-minecraft-server-java-edition-dl-link
.PHONY: run
