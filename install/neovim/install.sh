#!/bin/bash

if ! type "nvim" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : neovim"
    echo "-----------"

    sudo apt-add-repository ppa:neovim-ppa/stable
    sudo apt-get install python-dev python-pip python3-dev python3-pip -y
	sudo apt-get update
	sudo apt-get install neovim

	sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
	sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
	sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

    echo "-----------"
fi
