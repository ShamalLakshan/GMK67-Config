#!/bin/bash

echo "GMK67 Fn Row AutoFix at startup using systemd"

cp ./assets/gmk67fnrow.sh /opt/ && echo "gmkfnrow.sh copied to /opt/ directory"

cp ./assets/gmk67.service /etc/systemd/system/ && echo "gmk67.service copied to /etc/systemd/system/"

# Reload the systemd daemon to load the new service unit file
systemctl daemon-reload && echo "Reloaded the system"

# Enable the service to start at boot
systemctl enable gmk67.service && echo "Enabled gmk67.service at boot"

# Start the service
systemctl start gmk67.service && echo "Started gmk67.service"