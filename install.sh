#!/bin/bash

# Installation script for mini-service test

echo "Starting installation..."

# Make scripts executable
chmod +x *.sh

# Create log directory if needed
LOG_DIR="./logs"
mkdir -p "$LOG_DIR"

# Create log file if it doesn't exist
touch "$LOG_DIR/$LOG_FILE"

# Create empty PID file
touch "$PID_FILE"

echo "Installation complete!"
echo "You can now start the service with: ./start.sh"
