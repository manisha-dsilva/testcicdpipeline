#!/bin/bash

#export IMAGE=$(sed -n '1p' /tmp/.auth)
#export TAG=$(sed -n '2p' /tmp/.auth)
#export PASS=$(sed -n '3p' /tmp/.auth)

#BUIlD_TAG=$(sed -n '2p' /tmp/.auth)

docker login -u manishadsilva -p $PASS
cd jenkins/deploy && docker-compose up -d
