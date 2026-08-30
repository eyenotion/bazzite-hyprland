#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Enable Hyprland COPR
dnf5 -y copr enable giperborey/Hyprland

# Install Hyprland
dnf5 install -y hyprland

# Disable COPR so it isn't enabled in the final image
dnf5 -y copr disable giperborey/Hyprland

#### Example for enabling a System Unit File

systemctl enable podman.socket
