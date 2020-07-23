#!/bin/bash

echo "**********************"
echo "***Testing the jar********"
echo "**********************"

WORKSPACE=/home/manisha/jenkins/jenkins_home/workspace/$PROJECT

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

