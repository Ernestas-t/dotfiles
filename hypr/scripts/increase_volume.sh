#!/bin/bash

# Get the current volume level
current_volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}')

# Check if the current volume is less than 100%
if (( $(echo "$current_volume < 100" | bc -l) )); then
    # Increase the volume by 5%
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
else
    # Set the volume to 100% if it exceeds 100%
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 100%
fi
