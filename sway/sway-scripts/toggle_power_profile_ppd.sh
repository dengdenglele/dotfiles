#!/bin/bash

# Note: be sure to set the permissions for this file to `chmod 755 <file-name>.sh`

# Requires: sudo apt install power-profiles-daemon

# Function to get the current power profile
get_current_profile() {
    powerprofilesctl get | awk '{print $NF}'
}

# Get the current power profile
current_profile=$(get_current_profile)

# Determine the next profile to set
case $current_profile in
    "power-saver")
        next_profile="balanced"
        ;;
    "balanced")
        next_profile="performance"
        ;;
    "performance")
        next_profile="power-saver"
        ;;
    *)
        next_profile="balanced"
        ;;
esac

# Set the new power profile
powerprofilesctl set "$next_profile"
