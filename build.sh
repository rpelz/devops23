#!/usr/bin/env bash

IMAGE_NAME=devops23
PORT=8000

CONTAINER_NAME=$IMAGE_NAME-test

docker build --rm -t $IMAGE_NAME .

docker run --rm --name $CONTAINER_NAME -p $PORT:8000 -d $IMAGE_NAME

echo "Container runs on port:$PORT"

echo "To stop test container: 'docker stop $CONTAINER_NAME'"
