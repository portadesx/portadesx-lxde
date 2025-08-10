#!/bin/sh

proot-distro remove portadesx-lxde

proot-distro clear-cache

apt remove proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y && apt autoremove -y

apt remove x11-repo tur-repo -y && apt update

rm $PREFIX/etc/proot-distro/portadesx-lxde.sh
rm /data/data/com.termux/files/usr/bin/portadesx-lxde-cli
rm /data/data/com.termux/files/usr/bin/portadesx-lxde-gui
rm /data/data/com.termux/files/usr/bin/portadesx-lxde-help

sed -i '/LD_PRELOAD=/system/lib64/libskcodec.so/d' $PREFIX/etc/bash.bashrc
sed -i '/pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1/d' $PREFIX/etc/bash.bashrc
