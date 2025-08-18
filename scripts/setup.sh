#!/bin/sh
# Install x11 and tur repo
termux-setup-storage
apt update
apt install x11-repo tur-repo
apt update

# Update installed package but keep configuration
apt upgrade -y -o Dpkg::Options::="--force-confold"

# Install depedency
apt install curl wget nano proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y

# Create manual proot-distro configuration
wget https://raw.githubusercontent.com/portadesx/portadesx-lxde/refs/heads/main/scripts/portadesx-lxde.sh -P $PREFIX/etc/proot-distro/portadesx-lxde.sh

# PulseAudio at startup on bash.bashrc
echo 'LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> $PREFIX/etc/bash.bashrc

# Create startup script
# for CLI session
printf 'proot-distro login portadesx-lxde --user portadesx' >> /data/data/com.termux/files/usr/bin/portadesx-lxde-cli

# for X11 session
cat <<EOF > /data/data/com.termux/files/usr/bin/portadesx-lxde-gui
#!/bin/sh
export XDG_RUNTIME_DIR=${TMPDIR}
kill -9 \$(pgrep -f "termux.x11")\ 2>/dev/null
kill -9 \$(pgrep -f "virgl")\ 2>/dev/null
proot-distro login portadesx-lxde --shared-tmp -- /bin/sh -c 'kill -9 $(pgrep -f "x11") 2>/dev/null'
virgl_test_server_android &
termux-x11 :0 >/dev/null &
sleep 3
proot-distro login portadesx-lxde --shared-tmp -- /bin/sh -c 'export PULSE_SERVER=127.0.0.1 && export XDG_RUNTIME_DIR=${TMPDIR} && su - portadesx -c "DISPLAY=:0 GALLIUM_DRIVER=virpipe startlxde"'
EOF

# Make all of them executable
chmod +x /data/data/com.termux/files/usr/bin/portadesx-lxde-gui
chmod +x /data/data/com.termux/files/usr/bin/portadesx-lxde-cli

# PulseAudio at Setup
LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1 --exit-idle-time=-1"

# Install rootfs
proot-distro install portadesx-lxde

# Create Help Script
wget https://raw.githubusercontent.com/arfshl/portadesx-lxde/refs/heads/main/scripts/portadesx-lxde-help -P /data/data/com.termux/files/usr/bin/
chmod +x data/data/com.termux/files/usr/bin/portadesx-lxde-help
portadesx-lxde-help



