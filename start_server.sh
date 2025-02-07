#!/bin/sh
docker stop "$(docker ps -qa)"
docker rm "$(docker ps -qa)"
docker build -t myserver .
docker run --rm -d -p 22:22 --name myserver myserver
