DISTRO_NAME="PortadesX:LXDE"
TARBALL_URL['aarch64']="7e1d616b61510dfdb37e365b6f1150c92dded580d0b7c50a09563000a5897698"
TARBALL_SHA256['aarch64']="https://github.com/portadesx/portadesx-lxde/releases/download/24.04-202508091501/portadesx-lxde-2404.tar.xz"
distro_setup() {
        run_proot_cmd ln -s /storage/emulated/0/ /home/portadesx/Desktop/android_files
}
