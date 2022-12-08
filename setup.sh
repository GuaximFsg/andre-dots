#!/bin/bash

echo "INSTALLING PACKAGES IN 3 SECONDS"
sudo pacman -Syu --needed - < packages-repository.txt


echo "STARTING BACKUP  3"
sleep 3
mv ~/.config/waybar ~/.config/waybar.old.andredots
mv ~/.config/sway ~/.config/sway.old.andredots
mv ~/.config/wofi ~/.config/wofi.old.andredots

echo "STARTING INSTALLATION OF CONFIG FILES IN 5"
sleep 5
cp -r .config/sway ~/.config/
cp -r .config/waybar ~/.config/
cp -r .config/wofi ~/.config/

