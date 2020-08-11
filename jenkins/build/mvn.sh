#!/bin/bash

echo "**********************"
echo "**Building jar********"
echo "**********************"

sudo cp /var/lib/docker/volumes/jenkins-data/_data/workspace/$PROJECT ../jenkins_home/workspace

sudo chown 1000:1000 jenkins-home -R

sudo chown 1000 /var/run/docker.sock

#WORKSPACE=/var/lib/docker/volumes/jenkins-data/_data/workspace/$PROJECT

WORKSPACE=/home/manisha/jenkins/jenkins_home/workspace/$PROJECT

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

