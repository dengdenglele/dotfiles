#!/bin/bash

# Note: be sure to set the permissions for this file to `chmod 755 <file-name>.sh`

# Function to get the current power profile
get_current_profile() {
    tuned-adm active | awk '{print $NF}'
}

# Get the current power profile
current_profile=$(get_current_profile)

# Determine the next profile to set
case $current_profile in
    "powersave")
        next_profile="balanced"
        ;;
    "balanced")
        next_profile="throughput-performance"
        ;;
    "throughput-performance")
        next_profile="powersave"
        ;;
    *)
esac

# Set the new power profile
tuned-adm profile $next_profile
