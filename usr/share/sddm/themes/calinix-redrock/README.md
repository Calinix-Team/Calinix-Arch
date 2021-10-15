# Redrock, a macOS inspired SDDM theme
![Alt text](/screenshot.png?raw=true)
*Redrock* gets its name from the [Red Rock Canyon State Park](https://en.wikipedia.org/wiki/Red_Rock_Canyon_National_Conservation_Area), inside the Mojave desert, and not coincidentally, the latest version of Apple's proprietary operating system is titled [macOS *Mojave*](https://www.apple.com/macos/mojave/).
Inspired by the clean, minimalist interface of Mojave, Redrock aims to provide a near identical looking theme for the fantastic SDDM, or [Simple Desktop Display Manager](https://github.com/sddm/sddm/).
## Installation
1. ##### Install SDDM
This can vary, based on your distribution of linux.

2. ##### Download, or clone the repository

3. ##### Unpack the repository to the default SDDM theme folder

Usually this is located at

> /usr/share/sddm/themes/

4. ##### Update your default.conf file
In a terminal window, type:

>sudo nano /usr/lib/sddm/sddm.conf.d/default.conf

Locate the line that says

> [Theme]  
> &#35; Current theme name  
> Current=  

And append "redrock" to the `Current=` line, like so:

>[Theme]  
>&#35; Current theme name  
>Current=redrock  

5. ##### Save the file (in Nano, this is done with ```Control + S```)

6. ##### That's it!
	Next time you launch SDDM, it should be running the Redrock theme. Enjoy!

## Customize the background
It is possible to customize the background image in Redrock by navigating to the `redrock/images` directory and replacing `background.png` with an image of your choosing.
## License
Redrock is released under a creative commons [Attribution-ShareAlike 2.0](https://creativecommons.org/licenses/by-sa/2.0/) Generic license. This means that you are free to share Redrock, completely free of charge, as well as modify or adapt it in any way you wish, even commercially. However, if you do so, you must agree to provide attribution, not only to me, but also to the other code creators listed in the ```Attribution``` section, and you must also agree to distribute your contributions under the same license as the original works.

In addition, some of the icons used, specifically:

<image src="images/restart_dark.png" width="50px">
<image src="images/shutdown_dark.png" width="50px">
<image src="images/sleep_dark.png" width="50px">
<image src="images/keyboard_dark.png" width="32px">

Were purposefully created for the Redrock theme and are available in the public domain (no copyright whatsoever), and are packaged in full resolution .PNG format in the redrock/images/ folder. If you're squeezing every ounce of space on your Linux installation, and have no need for these icons, I recommend you delete them.
## Attribution
Redrock would simply not be possible without these amazing and talented developers

 **Match-Yang**<br />
yangwanqing.me@qq.com <br />
http://wanqingyang.me <br />
For his work on the fantastic [Deepin Theme for SDDM](https://github.com/Match-Yang/sddm-deepin).

**Mikkel Oscar Lyderik** <br />
mikkeloscar@gmail.com <br />
https://github.com/mikkeloscar <br />
For his work on the gorgeous [Gracilis Theme for SDDM](https://github.com/mikkeloscar/sddm-gracilis-theme).
