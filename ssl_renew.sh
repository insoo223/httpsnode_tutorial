#!/bin/bash

COMPOSE="/usr/bin/docker-compose --no-ansi "
DOCKER="/usr/bin/docker"

cd /home/insoo223_gmail_com/github/node_project/
$COMPOSE run certbot renew && $COMPOSE kill -s SIGHUP webserver
$DOCKER system prune -af

