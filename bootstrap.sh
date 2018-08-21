#!/bin/bash

sudo add-apt-repository universe
sudo apt-get update

BASEDIR=`pwd`

echo "-----------"
cd $BASEDIR/link
bash master.sh
echo "-----------"
cd $BASEDIR/install
bash master.sh
echo "-----------"
echo "[COMPLETE!]"
