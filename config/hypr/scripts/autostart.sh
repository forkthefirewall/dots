#!/bin/bash

# Wait for Hyprland to be ready
sleep 1

# Start essential services
systemctl --user start pipewire
systemctl --user start wireplumber

# Start components
hyprpaper &
waybar &
mako &
nm-applet --indicator &

# Clipboard manager
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

# Authentication agent
/usr/lib/polkit-kde-authentication-agent-1 &
