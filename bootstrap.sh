#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

add-apt-repository universe
apt-get update

BASEDIR=`pwd`

echo "-----------"
cd $BASEDIR/link
bash master.sh
echo "-----------"
cd $BASEDIR/install
bash master.sh
echo "-----------"
echo "[COMPLETE!]"
