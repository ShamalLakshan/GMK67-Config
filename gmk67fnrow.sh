#!/bin/bash

echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode

sudo sh -c 'echo "options hid_apple fnmode=0" > /etc/modprobe.d/hid_apple.conf'

# echo "Changes applied successfully."
