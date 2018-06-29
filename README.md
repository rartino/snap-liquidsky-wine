## Unofficial snap package for running LiquidSky Windows client in Wine

**This is (the source for) a snap package for running on Linux the <a href="https://gaming.liquidsky.com/">LiquidSky gaming service</a> client for Windows by using Wine.**

**Important: this software is in no way affiliated with the company LiquidSky. No LiquidSky software is part of the package itself. Upon running the snap package, it downloads the installer for LiquidSky from the official servers and executes it.**

This snap is just a slightly modified version of the <a href="https://github.com/snapcrafters/steamforwindows">steamforwindows</a> snap. It is supposedly working on Ubuntu, Fedora, Debian, and other major Linux distributions.

This snap is experimental, built with development releases of upstream WINE and may not function as expected. If you encounter issues you can report them as an issue at this GitHUb project. **Please do NOT bother LiquidSky support with any issues you experience when using this software, since it is NOT sactioned by them in any way, shape, or form.**

## Install

Installing snap package from edge channel:
```
   snap install liquidsky-wine-unofficial --edge
   snap connect liquidsky-wine-unofficial:joystick
   liquidsky-wine-unofficial
```

To instead rebuild the snap from source and install it:
```
   git clone git@github.com:rartino/snap-liquidsky-wine-unofficial.git
   cd snap-liquidsky-wine-unofficial
   make
   snap install ./liquidsky-wine-unofficial_latest_multi.snap --dangerous
   snap connect liquidsky-wine-unofficial:joystick
   liquidsky-wine-unofficial
```

Once you have it installed, you can also alternatively run the client with the '--no-gpu' flag this way:
```
   liquidsky-wine-unofficial.nogpu
```

## Known issues and limitations

- In some installations, the first time one restarts the snap after a reboot, LiquidSky thinks it is being run on a new computer and asks for login + email verification. A workaround seems to be to just close it and restart it.

- On one Ubuntu 17.10 installation I've seen running liquidsky-wine-unofficial break with an error about being unable to allocate space for loading dynamic libraries. It is unclear what caused this error, but upgrading to Ubuntu 18.04 solved it.

- If you don't have snap installed, see: https://snapcraft.io/docs/core/install
 