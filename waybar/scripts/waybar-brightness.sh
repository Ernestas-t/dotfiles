#!/bin/bash

# Get the current brightness value
current_brightness=$(brightnessctl g)

# Get the maximum brightness value
max_brightness=$(brightnessctl m)

# Calculate the brightness percentage
brightness_percentage=$((current_brightness * 100 / max_brightness))

# Round to the nearest 10
rounded_brightness=$(( (brightness_percentage + 5) / 10 * 10 ))

# Output the rounded brightness percentage
echo $rounded_brightness
