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



---------------
cd /home
git clone https://github.com/hackstrap/datauno-docker.git
cd datauno-docker

chmod -R 777 /home/datauno-docker ??

1. docker compose -f docker-compose.dev.yml up antimatter redis clickhouse jitsu postgres-metabase metabase monit -d --compatibility
   docker compose -f docker-compose.dev.yml down

2. docker compose -f docker-compose.airflowfordatahub.yaml up -d --compatibility
   docker compose -f docker-compose.airflowfordatahub.yaml down

3. docker compose -f docker-compose.datahub.yml up -d --compatibility
   docker compose -f docker-compose.datahub.yml down

##Register DataHub connection (hook) to Airflow
```
docker exec -it `docker ps | grep webserver | cut -d " " -f 1` airflow connections add --conn-type 'datahub_rest' 'datahub_rest_default' --conn-host 'http://datahub-gms:8080'
```

cd OpenDataDiscovery/

4. docker compose -f docker-compose.opendatadiscovery.yaml up -d
   docker compose -f docker-compose.opendatadiscovery.yaml down





