#!/usr/bin/env bash

echo                 follow me on
echo          https://github.com/ch3332xr
echo
echo
echo 
echo                               !!!!!!WARNING!!!!!!
echo
echo
echo   All Resources will maxout and system will reboot into Latest Stable Linux Kernel
echo   
echo
echo
echo
echo
echo   *****************************Installing dependencies*****************************
apt install flex bison git build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache -y
git clone -b linux-5.8.y git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
cd linux-stable
cp /boot/config-`uname -r` .config
yes '' | make oldconfig
make clean
echo  {PATIENCE PAYS$}
make -j `getconf _NPROCESSORS_ONLN` deb-pkg LOCALVERSION=-linux_latest_stable
cd ..
dpkg -i *.deb
echo          https://github.com/ch3332xr
echo  [---------------! ALL-SET POST-REBOOT !---------------]
echo  [-------------SkFJX01BSEFLQUwh------------]
echo  REBOOTING!!!...............!...........................
systemctl reboot
