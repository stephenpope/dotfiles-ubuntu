#!/bin/bash

if ! type "stow" > /dev/null; then
   
    echo "-----------"
    echo INSTALL : GNU Stow
    echo "-----------"    
    
    sudo apt-get install stow -y

    echo "-----------"
fi

for dir in `find . -maxdepth 1 -type d \( ! -name . \)`
do
    DIRECTORY=`basename $dir`
    echo "Deploying : $DIRECTORY"
	stow $DIRECTORY -t ~/
done
