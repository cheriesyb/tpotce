#!/bin/bash

logs=("/data/fatt/log/fatt.log" "/data/suricata/log/eve.json" "/data/p0f/log/p0f.json" "/data/adbhoney/log/adbhoney.json" "/data/ciscoasa/log/ciscoasa.log" "/data/citrixhoneypot/logs/server.log" "/data/conpot/log/*.json" "/data/cowrie/log/cowrie.json" "/data/dionaea/log/dionaea.json" "/data/dicompot/log/dicompot.log" "/data/ddospot/log/*.log" "/data/elasticpot/log/elasticpot.json" "/data/endlessh/log/endlessh.log" "/data/glutton/log/glutton.log" "/data/hellpot/log/hellpot.log" "/data/heralding/log/auth.csv" "/data/honeypy/log/json.log" "/data/honeysap/log/honeysap-external.log" "/data/honeytrap/log/attackers.json" "/data/ipphoney/log/ipphoney.json" "/data/mailoney/log/commands.log" "/data/medpot/log/medpot.log" "/data/rdpy/log/rdpy.log" "/data/redishoneypot/log/redishoneypot.log" "/data/nginx/log/access.log" "/data/tanner/log/tanner_report.json")

for log in "${logs[@]}"
do
    touch $log
    echo $log "created"
done
