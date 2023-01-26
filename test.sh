#!/bin/bash
DISTRIBUTION=$(grep "^ID=" /etc/os-release | cut -d\= -f2) # linuxmint, ubuntu, debian

if [ "$DISTRIBUTION" == 'linuxmint' ]; then
  UBUNTU_VER=$(grep "^DISTRIB_RELEASE=" /etc/upstream-release/lsb-release | cut -d\= -f2) # mint only
  echo "$UBUNTU_VER"
elif [ "$DISTRIBUTION" == 'ubuntu' ]; then
    UBUNTU_VER=$(grep "^VERSION_ID=" /etc/os-release | cut -d\= -f2) # mint only
    echo "$UBUNTU_VER"
fi

DERIVITIVE=$(grep "^ID_LIKE=" /etc/os-release | cut -d\= -f2) # e.g. linuxmint, ubuntu

