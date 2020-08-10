#!/bin/bash

echo "**********************"
echo "**Building jar********"
echo "**********************"

chown 1000 /var/run/docker.sock
docker cp jenkins:/var/jenkins_home/workspace/$PROJECT ../jenkins_home/workspace

WORKSPACE=/home/manisha/jenkins/jenkins_home/workspace/$PROJECT

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

