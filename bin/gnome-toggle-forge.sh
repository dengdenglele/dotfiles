#!/bin/bash

if [ "$1" == "on" ]; then
    gnome-extensions enable forge@jmmaranan.com
elif [ "$1" == "off" ]; then
    gnome-extensions disable forge@jmmaranan.com
else
    echo "Invalid input. Please use 'on' or 'off'."
fi
