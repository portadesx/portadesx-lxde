DISTRO_NAME="PortadesX:LXDE"
TARBALL_URL['aarch64']="c8fdce44768bd6c1dce531d22a08b1e2d26f683ae55ccec9ea9bc0ea67746873"
TARBALL_SHA256['aarch64']="https://github.com/portadesx/portadesx-lxde/releases/download/noble-aarch64/portadesx-lxde.tar.xz"
distro_setup() {
        run_proot_cmd ln -s /storage/emulated/0/ /home/portadesx/Desktop/android_files
}
