#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

### Install packages

# Hyprland
dnf5 -y copr enable giperborey/Hyprland
dnf5 install -y hyprland
dnf5 -y copr disable giperborey/Hyprland

# Terminal and Quickshell
dnf5 install -y \
    kitty \
    quickshell

# DankMaterialShell
dnf5 -y copr enable avengemedia/dms
dnf5 install -y dms
dnf5 -y copr disable avengemedia/dms

#### Example for enabling a System Unit File

systemctl enable podman.socket
