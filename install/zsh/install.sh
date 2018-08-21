#!/bin/bash

if ! type "zsh" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : zsh"
    echo "-----------"

    sudo apt-get install zsh curl -y

    echo "-----------"
fi

echo "-----------"
echo "SETUP : zsh"
echo "-----------"

ZSH_CUSTOM=~/.oh-my-zsh/custom

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "-----------"
echo "SETUP : zsh-spaceship"
echo "-----------"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

chsh -s /bin/zsh

