#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Install Hyprland
dnf5 install -y hyprland

#### Example for enabling a System Unit File

systemctl enable podman.socket
