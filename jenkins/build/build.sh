#!/bin/bash

#copy the new jar to build location
cp -f java-app/target/*.jar jenkins/build/

echo "***************************"
echo "***Building docker image***"
echo "***************************"

cd jenkins/build/ && docker-compose --file docker-compose-build.yml build --no-cache


