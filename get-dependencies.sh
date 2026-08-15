#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm \
    amarok              \
    gst-plugins-good    \
    gst-plugin-pipewire \
    lxqt-qtplugin       \
    kvantum             \
    pipewire-audio      \
    pipewire-jack       \
    qt6ct

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano ffmpeg-mini kiconthemes-mini
