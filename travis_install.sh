#!/bin/sh -x
uname -a
cat /etc/lsb-release
apt list --installed | grep mingw
find /usr/bin/ -name "*mingw*"
