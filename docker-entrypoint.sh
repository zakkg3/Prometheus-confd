#!/bin/sh
echo "Running Confd"
# Use here the backend you want or just delete the -backend parameter if you want to use just envvars
/bin/confd -onetime -backend ssm && echo "Running pormetheus" ; /bin/prometheus --config.file=/prometheus.yml
