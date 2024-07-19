#!/bin/bash

nano /etc/systemd/system/gmk67.service

cat << EOF > /etc/systemd/system/gmk67.service
[Unit]
Description=Enable Fn Row of GMK67
After=network.target
[Service]
ExecStart=/opt/gmk67fnrow.sh
[Install]
WantedBy=default.target
EOF

