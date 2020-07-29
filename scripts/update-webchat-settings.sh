#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}/..

echo "### Using workspace to update OD Conversations ###"
docker-compose up -d workspace dgraph-server dgraph-zero mysql

echo "### Updating webchat conversations ###"
docker-compose exec workspace bash -c "php artisan webchat:setup"

bash scripts/stop-workspace.sh