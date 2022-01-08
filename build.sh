#!/bin/sh

cl65 -o star2.prg -O -C c64-asm.cfg --start-addr '$c0f0' star-joystick.s || { exit 1; }
c1541 -attach disk.d64 8 -delete star2
c1541 -attach disk.d64 8 -write star2.prg star2
x64 -attach8rw disk.d64
