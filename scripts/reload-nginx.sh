#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}/..

echo "### Reloading NGINX ###"
docker-compose up -d nginx
docker-compose exec nginx nginx -s reload
