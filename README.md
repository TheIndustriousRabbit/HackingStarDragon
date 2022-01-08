# HackingStarDragon

A modified version of a C64 tech demo to add joystick support.

Watch the video: https://youtu.be/3JdcgiPp60k

## Decompiling

`star-ca65.prg` already has the two byte memory header stripped. You can
decompile it with `da65`:

```
da65 -o star-ca65.s star-ca65.prg
```

## Hacking

I put comments into `star-joysitck.s` with all of the modifications I made.

## Building

You'll need a virtual floppy made in VICE called `disk.d64` in this directory.
Then run `build.sh` and VICE will start with the floppy drive attached.
You'll need to type in the BASIC part of **Star Dragon** to make this work.
(https://archive.org/details/1986-06-computegazette/page/n55/mode/2up)
Get to typing!
