#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if ! type "zsh" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : zsh"
    echo "-----------"

    apt-get install zsh curl -y

    echo "-----------"
fi

echo "-----------"
echo "SETUP : zsh"
echo "-----------"

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
exec zsh

echo "-----------"
echo "SETUP : zsh-spaceship"
echo "-----------"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
exec zsh


