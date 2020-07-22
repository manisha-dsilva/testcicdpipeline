#!/bin/bash

#copy the new jar to build location
cp -f ../../java-app/target/*.jar .

echo "***************************"
echo "***Building docker image***"
echo "***************************"

docker-compose --file docker-compose-build.yml build --no-cache


