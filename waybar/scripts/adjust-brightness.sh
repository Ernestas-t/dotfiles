#!/bin/bash

# Adjust brightness using brightnessctl
brightnessctl set "$1"

# Emit signal 10 to Waybar
pkill -RTMIN+10 waybar
