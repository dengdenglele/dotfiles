#!/bin/sh

## install wget, zip for unzip functionality
sudo apt-get install wget zip

## remove previous direcotory and set it up fresh
rm -rf ~/.local/share/fonts/GeistMono
mkdir -p ~/.local/share/fonts/GeistMono

## download, unzip and delete the downloaded zip file
wget -P ~/.local/share/fonts/GeistMono https://github.com/ryanoasis/nerd-fonts/releases/latest/download/GeistMono.zip
unzip ~/.local/share/fonts/GeistMono/GeistMono.zip -d ~/.local/share/fonts/GeistMono/
rm ~/.local/share/fonts/GeistMono/GeistMono.zip

## force build font information cache and display progress
fc-cache -fv
