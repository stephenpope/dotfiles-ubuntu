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
ruby --version
echo "-----------"
dotnet --info
echo "-----------"
docker --version
echo "-----------"
go version
echo "-----------"
git --version
echo "-----------"
tree --version
echo "-----------"
thefuck --version
echo "-----------"
pwsh --version
echo "-----------"
kubectl version
echo "-----------"
echo "[COMPLETE!]"

