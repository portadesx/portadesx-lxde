DISTRO_NAME="PortadesX:LXDE"
TARBALL_URL['aarch64']="98d5d9c7cda5d874684d8d9310e8af7b65464ec3253dca6f467e64ebe0cb6f31"
TARBALL_SHA256['aarch64']="https://github.com/portadesx/portadesx-lxde/releases/download/noble-aarch64/portadesx-lxde.tar.xz"
distro_setup() {
        run_proot_cmd ln -s /storage/emulated/0/ /home/portadesx/Desktop/android_files
}
