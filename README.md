
# CalinixOS

CalinixOS is an Arch-based Linux Distribution made especially for THE Power User

![](https://get.calinix.tech/assets/img/hero-img.png)

This is the Github Repository for the CalinixOS ISO

## Goals
### Optimization
We try to make our OS as optimized as we can for low end hardware. We believe in the statement "Your Hardware Can't Judge Your Ability"

### Productivity
We want your workflow to be as smooth and flawless as possible, hence we build our desktop focusing on keeping stuff keyboard-centric, fast and efficient enough to help you work quickly.

### Design
"If a diamond can't attract, It's worthless"
When we also believe in powerful desktops, we equally believe in polished, beautiful frontend that make your eyes fall in love. If your desktop looks good, you work more efficiently and pleasantly.

## Contribution:

Currently we need more developers! You can find the contributing guidelines in [CONTRIBUTING.MD](./CONTRIBUTING.md)

### Currently Needed Developers with either one of these skills:

1. AUR Packaging
2. Plymouth Themes
3. System Bash Scripting
4. Someone who can integrate chaotic-aur with calinix Out of the Box
5. Marketing

## Progress

Currently we are working on external applications, as we have nearly completed the iso part. Looking forward to Plymouth integration. 

## FAQ

1. **Why do I make this distribution?**

- For fun, learning and as a hobby. I like making distributions. But yeah it has some other reasons too. Currently it's a hobby project. I've seen people getting scared of the keyboard and all, while some others just wanna settle on some keyboard-centric distribution/OS by default. Calinix is for both of the users. It has a Desktop Environment-like interface with the poweer and taste of a window manager. Less bloat, Less weight, More Efficiency, More Beauty.

2. **Why should I use Linux if I have windows or Mac already?**

- Well there are tons and tons of reasons for that. There are many articles like [itsfoss's](https://itsfoss.com) [linux vs mac](https://itsfoss.com/linux-vs-mac/) and [linux vs windows](https://itsfoss.com/linux-better-than-windows/). Main reasons being that Linux is free and open source, flexible and lightweight. It does not have any code hidden from you which could be used to exploit your user data.

3. **Why not just Arch?**

- Calinix is based on pure Arch Linux with no custom package control, making your distribution rolling release, reliable and have infinite possibilities. But why not just Arch instead? Cuz Calinix doesn't carry the hassle of installing Arch, saves your time, gives you a wm-powered desktop with Calinix Software. It's preconfigured according to a power user's needs with power tools nbuild

4. **Can I join the developer team?**

- Sure. We heartily welcome you. Join our [discord](https://discord.gg/MtQddKmevk) to stay in touch with other developers and discuss development there. You should read the [contributing guidelines](./CONTRIBUTING.md). 

5. **How can I contact developers?**

- Join our [discord server](https://discord.gg/MtQddKmevk) for any support or talking to developers or gossiping with others.

6. **How much resources does this take?**

- In our VMs it has recorded a usage of 400mb RAM only with Alacritty open. It's a very light distribution suitable for even computers with 2GB RAM. It's minimal to CPU too. Your dual cores can handle it easy.

**Need more questions in the list? Mail us at arghyasarkar.nolan@gmail.com or join our discord server**

## Using Calinix

You can try out [Calinix Alpha 5 Stable](https://github.com/Calinix-Team/Calinix-Arch/releases/tag/0.5-M) pre-release as of now.

### Running on Local Hardware

- Download the [ISO](https://drive.google.com/file/d/1U8eTFyoYxjzBLMUtMoEzBDAFUp3rNR3g/view?usp=sharing)

- Burn the ISO to a USB Stick with tools like [Etcher](https://etcher.io), Rufus or Ventoy

- Boot through the USB

- When you reach the login screen, log in through the user `calinix` with password `calinix`

- You can install calinix by opening the terminal (Super+X) and running `sudo calamares`. Enter `calinix` as the password.

- Proceed to install the system like you do in calamares

### Installing in VM

NOTE: CalinixOS Uses Picom as compositor which doesn't quite go well in a VMs. 

- After booting the OS, you will notice a pretty laggy performance due to picom. To avoid this, launch the terminal (Super+X) and run `killall picom`. Your performance should be boosted. For continuity in similar performance, disable picom to start up by unchecking the line `awful.util.spawn_with_shell("picom &")` in `~/.config/awesome/rc.lua`

## Support Our Work 

Donate to Calinix Project, motivating us to make our projects better

<a href="https://www.buymeacoffee.com/team.calinix"><img src="https://img.buymeacoffee.com/button-api/?text=Buy Us a coffee&emoji=&slug=team.calinix&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00"></a>

## Extra Credits

#### The following people are to be highly appreciated as they have become a great contribution in CalinixOS and its development process

- [**Gerome Matilla**](https://github.com/manilarome/)- His awesomewm configs in [the glorious dotfiles](https://github.com/manilarome/the-glorious-dotfiles) have made up to being a base in CalinixOS for us to build our awesome configurations. It's literally one of the most beautiful ones we have seen and appreciate him for this great work.

- [**Eznix**](https://www.youtube.com/channel/UCQrSHD-tv9nkssrD4nNGcMw)- His [ezarcher](https://sourceforge.net/projects/ezos/files/ezarcher) templates are the ones we use in Calinix, which smoothen our workflow and make stuff fast to develop. He has pretty awesome projects he has worked hard on.  We love ezarcher and will continue to support it in future. He's been supportive and helpful from the very beginning and we highly appreciate what he has done for ezarcher.

- [**Erik Dubois and other ArcoLinux Team**](https://arcolinux.com)- The ArcoLinux discord server and Erik and his team are awesome, can't explain their contribution in words. Anywhere doubt-solving, and they were ready, Arco is already an awesome project, and recently we added ArcoLinux Repositories to Calinix. Now Calinix is heavily based of Arco. Great people, great project, great distro. (I use Arco BTW)

- [**Vinceliuice**](https://github.com/vinceliuice/)- His whitesur themes are used in Calinix, and we love the themes, it adds extra beauty to calinix and has a different level feeling. We appreciate him highly for making such beautiful themes.

