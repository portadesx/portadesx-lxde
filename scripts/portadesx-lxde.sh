DISTRO_NAME="PortadesX:LXDE"
TARBALL_URL['aarch64']="49392bebfb31c797adc49c0983fdc5bff03f2fe531fcf7b42faa68365f38876b"
TARBALL_SHA256['aarch64']="https://github.com/portadesx/portadesx-lxde/releases/download/noble-aarch64/portadesx-lxde.tar.xz"
distro_setup() {
        run_proot_cmd ln -s /storage/emulated/0/ /home/portadesx/Desktop/android_files
}
