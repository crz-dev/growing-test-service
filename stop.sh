#!/bin/bash

PID=$(pgrep -f service.sh)

if [ -z "$PID" ]; then
	echo "Service is not running."
else
	kill $PID
	echo "Service stopped (PID $PID)."
fi

