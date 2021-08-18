<div align='center'>
    <h3>
    	<img src='images/banner-glorious.png' align='center' height='200px'>
    </h3>
    <p align='center'>
    	<strong>
    		ORIGINAL WORK BY <a href="https://github.com/manilarome">Manilarome</a> 
    	</strong>
    </p>
</div>

<div align='center'>

[![maintained](https://img.shields.io/maintenance/yes/2020?label=maintained&style=flat-square)](https://github.com/manilarome/the-glorious-dotfiles/commits/master) [![contributions](https://img.shields.io/badge/contribution-welcome-brightgreen&?style=flat-square)](https://github.com/manilarome/the-glorious-dotfiles/pulls) [![HitCount](http://hits.dwyl.com/manilarome/Glorified-Dotfiles.svg)](http://hits.dwyl.com/manilarome/the-glorified-dotfiles)

</div>

<div align='center'>
	<a href='https://github.com/manilarome/the-glorious-dotfiles/wiki'>
		<img src='images/button-wiki.png' width='100px'>
	</a>
	<a href='https://github.com/manilarome/the-glorious-dotfiles/wiki/Dependencies'>
		<img src='images/button-depends.png' width='100px'>
	</a>
	<a href='https://github.com/manilarome/the-glorious-dotfiles/wiki/Getting-Started'>
		<img src='images/button-install.png' width='100px'>
	</a>
	<a href='https://github.com/manilarome/the-glorious-dotfiles/wiki/Gallery'>
		<img src='images/button-gallery.png' width='100px'>
	</a>
	<br>
	<br>
</div>

<p align='center'>
	<img alt='glorious' src='https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/glorious.gif'/>
	<br/>
	<b>
		Welcome to the ultimate awesomewm config!
	</b>
</p>

## [Wiki here](https://github.com/manilarome/the-glorious-dotfiles/wiki)

The wiki will guide you to replicate my setups. So read the frickin' manual! If you post an issue that can be solve by reading it, I'll drop kick you.

## Summary and details

If you're too lazy to read the wiki, here's some of the details you need to know.

### Starring

- [`archlinux`](https://www.archlinux.org/download/) as distribution
- [`fish`](https://fishshell.com/) as shell
- [`awesomewm`](https://awesomewm.org) as window manager
- [`alacritty`](https://github.com/alacritty/alacritty) as terminal emulator
- [`picom-git`](https://github.com/yshui/picom) as compositor
- [`rofi`](https://github.com/davatorium/rofi) as application launcher
- [`inter-font`](https://github.com/rsms/inter/) as the setup font
- [`trivago`](https://www.youtube.com/watch?v=dQw4w9WgXcQ) as hotel

### Required dependencies

| Name | Description | Why/Where is it needed? |
| --- | --- | --- |
| [`awesome-git`](https://github.com/awesomeWM/awesome) |  Highly configurable framework window manager | Isn't it obvious? |
| [`rofi`](https://github.com/davatorium/rofi) | Window switcher, application launcher and dmenu replacement | Application launcher |
| [`picom-git`](https://github.com/yshui/picom) | A compositor for X11 | A compositor with kawase-blur |
| [`inter-font`](https://github.com/rsms/inter/) | A typeface specially designed for user interfaces | Setup font | 

### Installation and usage

1. Install the [required dependencies](#required-dependencies). Note that there's also an [optional dependencies](https://github.com/manilarome/the-glorious-dotfiles/wiki#optional-dependencies).
2. Clone this repository.

	```bash
	$ git clone https://github.com/arghyagod-coder/awesomewm-config
	```

3. Make sure to create a backup if you have a current AwesomeWM configuration.
4. Copy the folder to your `"${HOME}"/.config/`. I'll just assume that you don't have an `awesome` folder in your `~/.config/`:

	```bash
	# Use the Floppy setup
	$ cp -r awesomewm-config/* $HOME/.config/awesome
	```

4. Change the global configuration in `$HOME/.config/awesome/configuration/config.lua`.
5. Set the rofi config:

```bash
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/configuration/rofi/appmenu/rofi.rasi  ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/configuration/rofi/appmenu/rofi.rasi"' ~/.config/rofi/config.rasi
```

6. Reload AwesomeWM.

## TODOs

My TODOs or roadmap for my awesomewm setups.

- [x] Scrollable Notification Center<sup>needs improvement</sup>
- [x] Lockscreen PAM Integration
- [x] Multi-monitor support  
- [x] Refactor for cleaner code<sup>WIP</sup>
- [x] Extend the screen recorder widget's functionality
- [x] Adjust picom's blur strength using a slider


## Selling the dotfiles

Why would I want this?

### Core features

These are the features included in my AwesomeWM setups!

+ Notification Center
+ Dynamic Wallpaper
+ File/Web Searching like macOS' Spotlight
+ Application Dashboard
+ Brightness and Volume OSDs
+ Functional Trash Widget
+ Built-in Screen Recorder Widget
+ Built-in Calculator Widget
+ Email Widget
+ Weather Widget
+ Quake Terminal
+ Hardware Monitor
+ Blue Light Filter Widgets 
+ Lockscreen Module with Face Capture and PAM Integration
+ Easter eggs!<sup>Mostly bugs</sup>
+ Any many more!

I don't really rice just to make it beautiful, I want it to be also functional so that's why it's ***"bloated"*** with features.

### Gallery

<p align='center'>
	<img alt='glorious' src='https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/surreal.webp'/>
	<br/>
	<b>
		Surreal
	</b>
	<>br>
</p>

#### More screenshots

| Lockscreen with [PAM Integration](https://github.com/RMTT/lua-pam) |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/lockscreen.webp) |

| Application Menu |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/app-menu.webp) |

| Exit Screen |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/exit-screen.webp) |

| Multihead |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/multihead.webp) |

| [Rofi Global Search](https://github.com/manilarome/rofi-spotlight) |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/rofi-global.webp) |

| [blurredfox CSS theme for Firefox](https://github.com/manilarome/blurredfox/) |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/blurredfox.webp) |

| [glorious - lightdm-webkit2-theme](https://github.com/manilarome/lightdm-webkit2-theme-glorious/) |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/lightdm.webp) |

| [thunderblurred CSS theme for Thunderbird](https://github.com/manilarome/thunderblurred) |
| --- |
| ![Screenshot](https://raw.githubusercontent.com/manilarome/the-glorious-screenshots/master/thunderblurred.webp) |

## Credits

Grazie

- [Contributors](https://github.com/manilarome/the-glorious-dotfiles/graphs/contributors)
- [awesomewm devs](https://github.com/awesomeWM/awesome/graphs/contributors)
- The community of course
