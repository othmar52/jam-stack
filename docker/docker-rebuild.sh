#!/bin/bash

# stop and remove containers, networks, images, and volumes
docker-compose down

# Stop all containers
docker stop $(docker ps -a -q)
# Delete all containers
docker rm --force  $(docker ps -a -q)
# Delete all images
docker rmi --force $(docker images -q)

# build and run
docker-compose up


