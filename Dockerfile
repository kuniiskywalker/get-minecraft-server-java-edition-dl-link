FROM maven:3.3-jdk-8 AS build-env
ADD . /usr/src/mymaven/
WORKDIR /usr/src/mymaven
RUN mvn clean install

FROM java
COPY --from=build-env /usr/src/mymaven/target /data/
ENTRYPOINT ["java", "-jar", "/data/sample-1.0-SNAPSHOT-jar-with-dependencies.jar"]