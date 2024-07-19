#!/bin/bash

echo "GMK67 Knob Mapping Script for Gnome..."

# basic controls
gsettings set org.gnome.settings-daemon.plugins.media-keys play "['AudioMute']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['AudioLowerVolume']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['AudioRaiseVolume']"

# track controls
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Super>AudioLowerVolume']"
gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Super>AudioRaiseVolume']"

# default media player
gsettings set org.gnome.settings-daemon.plugins.media-keys media "['<Super>AudioMute']"