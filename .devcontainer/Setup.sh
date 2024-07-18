#!/bin/bash
sudo apt-get update
sudo apt-get install -y xfce4 xfce4-goodies tightvncserver websockify novnc

# Set up VNC server
vncserver :1 -geometry 1280x800 -depth 24

# Create a password for VNC access
echo '@cyb3king' | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Set up websockify and noVNC
websockify --web=/usr/share/novnc/ 6080 localhost:5901 &
