#!/bin/sh
#git clone \
#  --depth 1 \
#  --single-branch \
#  --quiet --progress \
#  --no-checkout \
#  https://github.com/ryanoasis/nerd-fonts
#cd nerd-fonts && git checkout HEAD src font-patcher

FONTPATCHER_ZIP=https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
FONTPATCHER_ZIP=https://github.com/b-/nerd-fonts/raw/release-master-fontpatcher/FontPatcher.zip

mkdir nerd-fonts
cd nerd-fonts
wget "$FONTPATCHER_ZIP"
unzip FontPatcher.zip
