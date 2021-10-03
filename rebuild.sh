#!/bin/bash

# Rebuild Heimdall
sudo docker-compose -f /opt/tpot/docker/heimdall/docker-compose.yml build
# Rebuild Logstash
sudo docker-compose -f /opt/tpot/docker/elk/logstash/docker-compose.yml build
# Restart Tpot service (do not use restart)
sudo systemctl stop tpot.service
sudo systemctl start tpot.service