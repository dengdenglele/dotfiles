#!/bin/bash

if [ "$1" == "dark" ]; then
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
elif [ "$1" == "light" ]; then
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
else
    echo "Invalid input. Please use 'dark' or 'light'."
fi
