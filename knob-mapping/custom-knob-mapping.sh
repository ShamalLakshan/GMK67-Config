#!/bin/bash

echo "GMK67 Knob Mapping Script for Gnome..."

# basic controls
gsettings set org.gnome.settings-daemon.plugins.media-keys play "['AudioMute']" && echo "Play/Pause shortcut set to Knob Click"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['AudioLowerVolume']" && echo "Decrease Volume set to Knob Rotate Left"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['AudioRaiseVolume']" && echo "Increase Volume set to Knob Rotate Right"

# track controls
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Super>AudioLowerVolume']" && echo "Previous Track set to Super(Win) + Knob Rotate Left"
gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Super>AudioRaiseVolume']" && echo "Previous Track set to Super(Win) + Knob Rotate Right"

# default media player
gsettings set org.gnome.settings-daemon.plugins.media-keys media "['<Super>AudioMute']" && echo "Audio(Multimedia) Player set to Super(Win) + Knob Click"

echo "All shortcuts mapped successfully!"