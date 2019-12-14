build:
	docker run -it --rm --name my-maven-project -v "$(PWD)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
.PHONY: build

run:
	docker run --rm -it -v $(PWD):/data java /bin/bash /data/run.sh
.PHONY: run
