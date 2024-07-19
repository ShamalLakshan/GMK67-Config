#!/bin/bash

cp ./gmk67fnrow.sh /opt/ && echo "gmkfnrow.sh copied to /opt/directory"

nano /etc/systemd/system/gmk67.service && echo "Successfully created gmk67.service"

cat << EOF > /etc/systemd/system/gmk67.service 
[Unit]
Description=Enable Fn Row of GMK67
After=network.target
[Service]
ExecStart=/opt/gmk67fnrow.sh
[Install]
WantedBy=default.target
EOF

echo "Successfully wrote to gmk67.service"

# Reload the systemd daemon to load the new service unit file
systemctl daemon-reload

# Enable the service to start at boot
systemctl enable gmk67.service

# Start the service
systemctl start gmk67.service