#!/bin/bash

# $1 is the username
# $2 is the authentication token
# $3 is the package name
# $4 is the repo name

# Change directory to datauno-ui
echo Changing directory to $HOME/datauno-docker
cd $HOME/datauno-docker
echo current directory $PWD

docker stop $(docker ps -a -q)

docker login -u $1 -p $2 docker.pkg.github.com
echo "Fetching $3..."
docker pull $3

echo "Successfully pulled the package"

docker run -dit -p 80:80 $3

# Logout
docker logout docker.pkg.github.com