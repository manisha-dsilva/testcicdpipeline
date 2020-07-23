#!/bin/bash

#copy the new jar to build location
cp -f java-app/target/*.jar jenkins/build/

echo "***************************"
echo "***Building docker image***"
echo "***************************"

#BUILD_TAG=$(sed -n '2p' /tmp/.auth)

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache


