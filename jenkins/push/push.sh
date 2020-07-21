#!/bin/bash

echo "****************************"
echo "***Pushing image************"
echo "****************************"

IMAGE="docker_repo"

echo "****login********"
docker login -u manishadsilva -p $PASS
echo "**Tagging image**"
docker tag $IMAGE:$BUILD_TAG manishadsilva/$IMAGE:$BUILD_TAG
echo "**Pushing image**"
docker push manishadsilva/$IMAGE:$BUILD_TAG
