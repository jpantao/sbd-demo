#!/bin/bash

echo "Killing everything"
docker kill $(docker ps -q) || true
docker rm $(docker ps -aq) || true

sleep 1

echo "Launching PostgreSQL"
docker run -d --rm \
    --name sbd-postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -e POSTGRES_PASSWORD=mysecretpassword \
    -v /tmp/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres

sleep 1

read -rp "Press any key to stop PostgreSQL"
docker kill $(docker ps -q) || true                                             
docker rm $(docker ps -aq) || true                                              
