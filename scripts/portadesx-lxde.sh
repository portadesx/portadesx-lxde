DISTRO_NAME="PortadesX:LXDE"
TARBALL_SHA256['aarch64']="7225d8caba9a9f6013b5fd3e3ab4ee391c684c468516a026a71344c2202c6393"
TARBALL_URL['aarch64']="https://github.com/portadesx/portadesx-lxde/releases/download/noble-aarch64/portadesx-lxde.tar.xz"
distro_setup() {
        run_proot_cmd ln -s /storage/emulated/0/ /home/portadesx/Desktop/android_files
}
