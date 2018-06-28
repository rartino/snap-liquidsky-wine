<h1 align="center">
  <img src="snap/gui/liquidsky-wine.png" alt="Liquidsky in Wine">
  <br />
  Liquidsky for Windows running in Wine
</h1>

<p align="center"><p><b>This is (the source for) a snap package for Liquidsky for Windows running in Wine.</b></p>

  <p><b>Important: this is in no way affiliated with Liquidsky. No Liquidsky software is part of the package itelf. (Upon running the snap package, it downloads the installer for Liquidsky from the official servers and executes it.)</b></p>

  <p>This snap is just a slightly modified version of the <a href="https://github.com/snapcrafters/steamforwindows">steamforwindows</a> snap.</p>
 
  <p>It is supposedly working on Ubuntu, Fedora, Debian, and other major Linux distributions.</p> 

  <p><b>This snap is experimental, built with development releases of upstream WINE and may not function as expected. If you encounter issues please report them is this GitHUb project.</b></p>

## Install

For now:
```
   git clone git@github.com:rartino/snap-liquidsky-wine.git
   cd snap-liquidsky-wine
   make
   snap install liquidsky-wine --dangerous
   snap connect liquidsky-wine:joystick
   liquidsky-wine
```

However, I suppose we will eventually get it added to the snap edge distribution channel. At that point installation will be:
```
   snap install liquidsky-wine --edge
   snap connect liquidsky-wine:joystick
   liquidsky-wine
```

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

