#!/usr/bin/env bash
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=d8ad387\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/kuniiskywalker/get-minecraft-server-java-edition-dl-link/tree/master
