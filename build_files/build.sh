#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

### Install packages

### Hyprland

dnf5 -y copr enable giperborey/Hyprland

dnf5 install -y \
    hyprland \
    kitty

dnf5 -y copr disable giperborey/Hyprland


### DankMaterialShell

dnf5 -y copr enable avengemedia/dms

dnf5 install -y \
    dms \
    quickshell-git

dnf5 -y copr disable avengemedia/dms

#### Example for enabling a System Unit File

systemctl enable podman.socket
