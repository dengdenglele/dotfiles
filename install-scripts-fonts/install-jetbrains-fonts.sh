#!/bin/sh

## install wget, zip for unzip functionality
sudo apt-get install wget zip

## remove previous direcotory and set it up fresh
rm -rf ~/.local/share/fonts/JetBrainsMono
mkdir -p ~/.local/share/fonts/JetBrainsMono

## download, unzip and delete the downloaded zip file
wget -P ~/.local/share/fonts/JetBrainsMono https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip ~/.local/share/fonts/JetBrainsMono/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono/
rm ~/.local/share/fonts/JetBrainsMono/JetBrainsMono.zip

## force build font information cache and display progress
fc-cache -fv
