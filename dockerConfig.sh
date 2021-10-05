#!/bin/bash

logstashContainer=$(docker ps -qf "name=log")

docker cp /home/tpot_user/tpotce/docker/elk/logstash/dist/logstash.conf $logstashContainer:/etc/logstash/conf.d/

docker commit $logstashContainer ghcr.io/telekom-security/logstash:2006

docker-compose -f /home/tpot_user/tpotce/docker/elk/docker-compose.yml down

docker-compose -f /home/tpot_user/tpotce/docker/elk/docker-compose.yml up -d

docker logs $(docker ps -qf "name=log") -f