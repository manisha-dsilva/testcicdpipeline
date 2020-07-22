#!/bin/bash

echo "**********************"
echo "**Building jar********"
echo "**********************"

docker cp jenkins:/var/jenkins_home/workspace/demopipeline ../jenkins_home/workspace

WORKSPACE=/home/manisha/jenkins/jenkins_home/workspace/demopipeline

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

