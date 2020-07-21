#!/bin/bash

echo docker_repo > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

echo "****Deploying*******"

sh ./jenkins/deploy/publish.sh
