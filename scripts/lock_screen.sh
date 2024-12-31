#!/bin/bash

# Check if hyprlock is already running
if ! pidof hyprlock > /dev/null; then
    hyprlock &
fi
