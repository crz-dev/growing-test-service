#!/bin/bash

# Load configuration
if [ -f "./config.conf" ]; then
    source ./config.conf
else
    echo "config.conf not found! Exiting."
    exit 1
fi

# Service

while true; do
	echo "$(date) - INFO - Service is running" >> logging.log
	sleep 2
	if [ $((RANDOM % 10)) -eq 0 ]; then
		echo "$(date) - ERROR - Something went wrong!" >> logging.log
	fi
done
