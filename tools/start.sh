#!/bin/bash
sh clean-docker.sh
cd ..
docker-compose stop
docker-sync start
docker-compose up --build -d
docker exec -it sf-demo_php bash
rm -Rf var/cache
php bin/console cache:warmup
#cd tools/
#sh php.sh
