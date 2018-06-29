## Unofficial snap package for running LiquidSky Windows client in Wine

**This is (the source for) a snap package for running on Linux the <a href="https://gaming.liquidsky.com/">LiquidSky gaming service</a> client for Windows by using Wine.**

**Important: this software is in no way affiliated with the company LiquidSky. No LiquidSky software is part of the package itself. Upon running the snap package, it downloads the installer for LiquidSky from the official servers and executes it.**

This snap is just a slightly modified version of the <a href="https://github.com/snapcrafters/steamforwindows">steamforwindows</a> snap. It is supposedly working on Ubuntu, Fedora, Debian, and other major Linux distributions.

This snap is experimental, built with development releases of upstream WINE and may not function as expected. If you encounter issues you can report them as an issue at this GitHUb project. **Please do NOT bother LiquidSky support with any issues you experience when using this software, since it is NOT sactioned by them in any way, shape, or form.**

## Install

Installing a pre-built snap package (distributed outside the official snap channel for now):
```
   wget https://cl.ly/1N2c2u3F1N2t/download/unofficial-liquidsky-wine_latest_multi.snap
   snap install ./unofficial-liquidsky-wine_latest_multi.snap --dangerous
   snap connect unofficial-liquidsky-wine:joystick
   unofficial-liquidsky-wine
```
The md5sum of `unofficial-liquidsky-wine_latest_multi.snap` is: `01f2ed2863889731e9105d305e235cb1`, the sha-1 is: `57e16614023c2ce3d608c26b262855b0d9b9cd5b`.

I suppose we will eventually get it added to the snap edge distribution channel. At that point installation will be:
```
   snap install unofficial-liquidsky-wine --edge
   snap connect unofficial-liquidsky-wine:joystick
   unofficial-liquidsky-wine
```

To rebuild the package from source instead (somewhat safer, but requires snap development tools):
```
   git clone git@github.com:rartino/snap-unofficial-liquidsky-wine.git
   cd snap-unofficial-liquidsky-wine
   make
   snap install ./unofficial-liquidsky-wine_latest_multi.snap --dangerous
   snap connect unofficial-liquidsky-wine:joystick
   unofficial-liquidsky-wine
```

Once you have it installed, you can also alternatively run the client with the '--no-gpu' flag this way:
```
   unofficial-liquidsky-wine.nogpu
```

**Note: it seems that the first time one restarts the snap after a reboot, LiquidSky thinks you are running it on a new computer and asks for login + email verification. A workaround seems to be to just shut it down and restart it.**

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

