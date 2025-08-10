# PortadesX:LXDE

PortadesX:LXDE is a 'Flavor' of PortadesX, a Termux proot-distro rootfs with pre-installed desktop environment and with internet and multimedia apps based on Ubuntu LTS. Now featuring LXDE Desktop, lightweight, 2006-ish style traditional layout

### Core Features:

- Pre-installed [LXDE](http://lxde.org) Desktop 
- Pre-configured Sound, User, and VNC Server with easy command
- Pre-installed Apps
- Pre-configured access to android files
- Based on official Ubuntu termux proot-distro rootfs, make it integrated directly on termux

##### List of pre-installed apps
- [Firefox Web Browser](https://www.firefox.com/en-US/)
- [Chromium Web Browser](https://chromium.org)
- [Mozilla Thunderbird](https://thunderbird.net)
- [VLC Media Player](https://www.videolan.org/vlc/)
- [Evince PDF Viewer](https://wiki.gnome.org/Apps/Evince)
- [gpicview Image Viewer](https://github.com/lxde/gpicview)
- [Mousepad Text Editor](https://docs.xfce.org/apps/mousepad/start)
- [Xarchiver File Archiver](https://github.com/ib/xarchiver)
- [Galculator](https://launchpad.net/ubuntu/+source/galculator)
- Chromium shortcut to Microsoft Office Online, see [docs](https://github.com/portadesx/portadesx/blob/main/docs%2FREADME.md) for offline alternative

### Screenshots
![](https://github.com/portadesx/portadesx-screenshots/raw/main/24.04/lxde/desktop.jpg)
![](https://github.com/portadesx/portadesx-screenshots/raw/main/24.04/lxde/app1.jpg)
![](https://github.com/portadesx/portadesx-screenshots/raw/main/24.04/lxde/vnc.jpg)

### Minimum System Requirements
- Android 8.0+ (Fixes for error code [Process completed (signal 9) - press Enter] for Android 12+ can be see [here](https://github.com/agnostic-apollo/Android-Docs/blob/master/en/docs/apps/processes/phantom-cached-and-empty-processes.md#internal-details-for-android-14-and-higher))
- 4GB of RAM
- 10GB of empty space

### Apps Needed
- [Termux](https://github.com/termux/termux-app/releases/)
- [Termux:X11 (for X11 session)](https://github.com/termux/termux-x11)
- [VNC Viewer (for VNC session)](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

### Install 

    apt update && apt upgrade && apt install wget -y && wget https://raw.githubusercontent.com/portadesx/portadesx-lxde/refs/heads/main/scripts/setup.sh && sh setup.sh && rm setup.sh

### Install (Parallel install with other flavors)

    apt update && apt upgrade && apt install wget -y && wget https://raw.githubusercontent.com/portadesx/portadesx-lxde/refs/heads/main/scripts/setup-parallels.sh && sh setup-parallels.sh && rm setup-parallels.sh

### Uninstall

    apt update && apt upgrade && apt install wget -y && wget https://raw.githubusercontent.com/portadesx/portadesx-lxde/refs/heads/main/scripts/uninstall.sh && sh uninstall.sh && rm uninstall.sh

### Uninstall (Parallel install with other flavors)

    apt update && apt upgrade && apt install wget -y && wget https://raw.githubusercontent.com/portadesx/portadesx-lxde/refs/heads/main/scripts/uninstall-parallels.sh && sh uninstall-parallels.sh && rm uninstall-parallels.sh

### Documentation
After installing, it's reccomended to read usage instructions. see [documentation](https://github.com/portadesx/portadesx-lxde/blob/main/docs/README.md)

#### License
[GPLv3](https://github.com/portadesx/portadesx-lxde/blob/main/LICENSE) and [CC-BY-SA 4.0](https://github.com/portadesx/portadesx-screenshots/blob/main/LICENSE.md) for screenshots
    
#### Code used from various projects:
- [andronixapp/andronixorigin: VNC installation script](https://github.com/AndronixApp/AndronixOrigin) Licensed Under MIT License.
- [linuxdroidmasters/termux-desktops: 3D Acceleration, PulseAudio Startup, Process kill. script](https://github.com/LinuxDroidMaster/Termux-Desktops) Licensed Under GPLv3.