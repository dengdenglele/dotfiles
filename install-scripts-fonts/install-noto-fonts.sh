#!/bin/sh

## install wget, zip for unzip functionality
sudo apt-get install wget zip

## remove previous direcotory and set it up fresh
rm -rf ~/.local/share/fonts/Noto
mkdir -p ~/.local/share/fonts/Noto

## download, unzip and delete the downloaded zip file
wget -P ~/.local/share/fonts/Noto https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Noto.zip
unzip ~/.local/share/fonts/Noto/Noto.zip -d ~/.local/share/fonts/Noto/
rm ~/.local/share/fonts/Noto/Noto.zip

## force build font information cache and display progress
fc-cache -fv
