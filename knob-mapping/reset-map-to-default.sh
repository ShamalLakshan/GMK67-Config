#!/bin/bash

echo "Script to reset the Custom Knob map shortcuts to default"

# basic controls
gsettings set org.gnome.settings-daemon.plugins.media-keys play && echo "Play/Pause resetted to default settings"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down && echo "Decrease Volume resetted to default settings"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up && echo "Increase Volume resetted to default settings"