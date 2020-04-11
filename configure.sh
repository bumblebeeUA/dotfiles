#!/bin/bash

function system_update() {
    sudo apt update && sudo apt upgrade -y
}
system_update

echo "Installing i3...."
read -p "Would you like to use i3 along with your DE?: " $answer
if [[ $answer = 'yes' ]]; 
then
   i3_de()
else
    i3_server()

# i3 installing
function i3_server() {
    sudo apt install i3 ubuntu-drivers-common mesa-utils \
    mesa-utils-extra gnupg numlockx xautolock scrot xorg \
    xserver-xorg wget unzip wpasupplicant
}

function i3_de() {
    sudo apt install i3
}

