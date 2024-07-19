#!/bin/bash

echo "Script to reset the Custom Knob map shortcuts to default"

# basic controls
gsettings set org.gnome.settings-daemon.plugins.media-keys play && echo "Play/Pause resetted to default settings"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down && echo "Decrease Volume resetted to default settings"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up && echo "Increase Volume resetted to default settings"

# track controls
gsettings set org.gnome.settings-daemon.plugins.media-keys previous && echo "Previous Track resetted to default settings"
gsettings set org.gnome.settings-daemon.plugins.media-keys next && echo "Previous Track resetted to default settings"

# default media player
gsettings set org.gnome.settings-daemon.plugins.media-keys media && echo "Audio(Multimedia) Player resetted to default settings"

echo "All shortcuts resetted to default successfully!"