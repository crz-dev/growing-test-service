#!/bin/bash

# Load configuration
if [ -f "./config.conf" ]; then
    source ./config.conf
else
    echo "config.conf not found! Exiting."
    exit 1
fi

# Status

PID=$(pgrep -f service.sh)

if [ -z "$PID" ]; then
	echo "Service is not running."
else
	echo "Service is running with PID $PID."
fi
