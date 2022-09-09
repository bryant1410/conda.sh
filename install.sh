#!/bin/bash
# <!--

echo "  ██████╗ ██████╗ ███╗   ██╗██████╗  █████╗    ███████╗██╗  ██╗"
echo " ██╔════╝██╔═══██╗████╗  ██║██╔══██╗██╔══██╗   ██╔════╝██║  ██║"
echo " ██║     ██║   ██║██╔██╗ ██║██║  ██║███████║   ███████╗███████║"
echo " ██║     ██║   ██║██║╚██╗██║██║  ██║██╔══██║   ╚════██║██╔══██║"
echo " ╚██████╗╚██████╔╝██║ ╚████║██████╔╝██║  ██║██╗███████║██║  ██║"
echo "  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝"

_uname=$(command uname)
if [[ $_uname == "Darwin" ]]
then
    PLAT="MacOSX"
    ARCH=$(command arch)
    if [[ $ARCH == "i386" ]]
    then
      ARCH="x86_64"
    fi
else 
    PLAT="Linux"
    ARCH=$(command arch)
    if [[ $ARCH == "i386" ]]
    then
      ARCH="x86_64"
    fi
fi

TARGET="https://repo.anaconda.com/miniconda/Miniconda3-latest-$PLAT-$ARCH.sh"
TMP=$(mktemp -u).sh

echo "Will download $TARGET – and execute it."
echo "$ curl $TARGET | sh"
# echo "Press \x1b[1;32mAny key to continue\x1b[1;0m, \x1b[1;31mCtrl-C\x1b[1;0m to abort"
echo "Press Any key to continue, Ctrl-C to abort"
read
curl -o $TMP $TARGET
sh $TMP

# -->
