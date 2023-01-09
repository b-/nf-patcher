#!/bin/sh
git clone \
  --depth 1 \
  --single-branch \
  --quiet --progress \
  --no-checkout \
  https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts && git checkout HEAD src font-patcher
