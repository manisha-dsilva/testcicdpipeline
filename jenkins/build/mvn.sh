#!/bin/bash

echo "**********************"
echo "**Building jar********"
echo "**********************"

echo $ROOT | sudo -S docker cp jenkins:/var/jenkins_home/workspace/PipelineCICD ../jenkins_home/workspace

WORKSPACE=/home/manisha/jenkins/jenkins_home/workspace/$PROJECT

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

