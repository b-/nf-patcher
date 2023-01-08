#!/bin/bash -eux

[ ! -d nerd-fonts ] && ./get-nf-patcher.sh # download patcher if we don't have it
[ ! -d dist ] && curl -L https://github.com/b-/Iosevka/releases/download/v0.1/fonts.tgz | tar -zxv

rm -fr out
cd nerd-fonts
#--use-cpus-instead-of-cores 
for flagset in '-c -w' '-c -w -s' '-c -s' ;
do
 find ../dist/briosk/ttf -not -type d -print0 | parallel -0 -v  -u "fontforge -script ./font-patcher --careful $flagset {} -o ../out"
done
