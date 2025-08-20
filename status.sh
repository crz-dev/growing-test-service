#!/bin/bash

PID=$(pgrep -f service.sh)

if [ -z "$PID" ]; then
	echo "Service is not running."
else
	echo "Service is running with PID $PID."
fi
