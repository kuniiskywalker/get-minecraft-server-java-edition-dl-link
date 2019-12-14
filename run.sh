#!/bin/bash

LINK=`java -jar /data/target/sample-1.0-SNAPSHOT-jar-with-dependencies.jar`
curl $LINK -o minecraft_server.jar
