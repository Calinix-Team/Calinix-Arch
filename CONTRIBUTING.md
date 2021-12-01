# Thank you for taking an interest in Calinix.

Since it is free software, you can contribute to make it better. New contributors are always welcome, whether you write code, create resources, report bugs, or suggest features.

## Requirements for contributing to CalinixISO

- **Arch Linux or Arch Based System (Except Manjaro)**

- **Atleast 5 GB free space**

- **Some Arch Linux knowledge**

## Understanding the Project

The basic folder structure of CalinixOS ISO

```
.
|-- CONTRIBUTING.md # Contribution Guidelines 
|-- README.md # The Main README
|-- efiboot # Live Boot Entry Configuration for EFI 
|   `-- loader 
|       |-- entries
|       |   |-- 01-archiso-x86_64-linux.conf # 1st Boot Option Settings
|       |   `-- 02-archiso-x86_64-speech-linux.conf # 2nd Boot Option Settings
|       `-- loader.conf # Not to be changed
|-- etc # All files of /etc/ are put here
|   |-- NetworkManager # NetworkManager Conf
|   |-- calamares # Calamares Conf
|   |-- default
|   |   |-- grub #Grub Configuration
|   |   `-- grub-themes # Grub Theme for Calinix
|   |-- locale.gen # locale generated file
|   |-- mkinitcpio.d
|   |   `-- ezmkinit # MKINITPCIO conf
|   |-- sddm.conf.d
|   |   `-- kde_settings.conf # SDDM Configuration
|   |-- skel # All files in skel folder go to user's HOME directory
|   |-- sudoers # Sudo configuration
|   |-- systemd # systemd configuration for calinix
|   |   `-- system
|   |       `-- ez-pacman-init
|   |-- udev
|   |   `-- rules.d
|   |       `-- 60-ioschedulers.rules
|   `-- xdg
|       `-- reflector
|           `-- reflector.conf
|-- opt
|   `-- calinix # Calinix Additional Repo
|-- packages.x86_64 # All packages for live boot
|-- pacman.conf # pacman configuration file
|-- profiledef.sh # ISO build Profile and Settings
|-- start.sh # Not to be executed by anyone except Arghya
|-- steps.sh # Build Script
|-- syslinux # BIOS Boot Meny configuration
|   |-- archiso_head.cfg
|   |-- archiso_pxe-linux.cfg
|   |-- archiso_pxe.cfg
|   |-- archiso_sys-linux.cfg
|   |-- archiso_sys.cfg
|   |-- archiso_tail.cfg
|   |-- splash.png
|   `-- syslinux.cfg
`-- usr # All files here to to /usr/ folder
    |-- bin
    |   `-- iris # Iris executable as binary
    |-- local
    |   `-- bin
    |       `-- ezmaint
    `-- share
        |-- X11 # Xorg config
        |   `-- xorg.conf.d
        |       `-- 30-touchpad.conf
        |-- icons
        |   `-- default
        |       `-- index.theme
        |-- rofi
        |   `-- themes
        `-- sddm
            `-- themes
                |-- calinix-redrock
                |-- calinix-sddm
                `-- calinix-sugar-candy
```

## It's simple!

For contributing to the iso, you just need knowledge of configuring and knowing your system files. The files you want in the /etc/ folder of Calinix system go to the etc folder. Same with usr and opt. But for the home directory (The place where you have Desktop, Documents and other main folders), you use the etc/skel folder

## Changing the Base Look of the System

Calinix ISO uses awesomeWM whose config files are in [etc/skel/.config/awesome](./etc/skel/.config/awesome)

```bash
etc/skel/.config/awesome/
|-- README.md
|-- configuration
|   |-- apps.lua
|   |-- client
|   |   |-- buttons.lua
|   |   |-- init.lua
|   |   |-- keys.lua
|   |   |-- rules.lua
|   |   `-- signals.lua
|   |-- config.lua
|   |-- init.lua
|   |-- keys
|   |   |-- global.lua
|   |   |-- init.lua
|   |   `-- mod.lua
|   |-- picom.conf
|   |-- rofi
|   |   |-- appmenu
|   |   |   `-- rofi.rasi
|   |   `-- global
|   |       |-- history.txt
|   |       |-- icons
|   |       |   |-- ddg.svg
|   |       |   |-- google.svg
|   |       |   |-- history.svg
|   |       |   |-- result.svg
|   |       |   `-- suggestion.svg
|   |       |-- rofi-spotlight.sh
|   |       |-- rofi.rasi
|   |       `-- web-search.py
|   |-- root
|   |   `-- init.lua
|   |-- tags
|   |   `-- init.lua
|   `-- user-profile
|       |-- default.svg
|       `-- jaylog.png
|-- layout
|   |-- bottom-panel.lua
|   |-- control-center
|   |   `-- init.lua
|   |-- info-center
|   |   `-- init.lua
|   |-- init.lua
|   `-- top-panel.lua
|-- library
|   `-- json.lua
|-- module
|   |-- auto-start.lua
|   |-- brightness-osd.lua
|   |-- dynamic-wallpaper.lua
|   |-- exit-screen.lua
|   |-- lockscreen.lua
|   |-- menu.lua
|   |-- notifications.lua
|   |-- quake-terminal.lua
|   |-- titlebar.lua
|   `-- volume-osd.lua
|-- rc.lua
|-- theme
|   |-- default-theme.lua
|   |-- icons
|   |   |-- awesome.svg
|   |   |-- battery-charge.svg
|   |   |-- battery-discharge.svg
|   |   |-- brightness-7.svg
|   |   |-- chart-areaspline.svg
|   |   |-- close.svg
|   |   |-- effects.svg
|   |   |-- harddisk.svg
|   |   |-- init.lua
|   |   |-- layouts
|   |   |   |-- dwindle.svg
|   |   |   |-- floating.svg
|   |   |   |-- fullscreen.svg
|   |   |   |-- max.svg
|   |   |   `-- tile.svg
|   |   |-- lock.svg
|   |   |-- logout.svg
|   |   |-- magnify.svg
|   |   |-- memory.svg
|   |   |-- plus.svg
|   |   |-- power-sleep.svg
|   |   |-- power.svg
|   |   |-- restart.svg
|   |   |-- ship-wheel.svg
|   |   |-- tag-list
|   |   |   |-- brave.svg
|   |   |   |-- close-small.svg
|   |   |   |-- development.svg
|   |   |   |-- file-manager.svg
|   |   |   |-- files.svg
|   |   |   |-- games.svg
|   |   |   |-- graphics.svg
|   |   |   |-- menu.png
|   |   |   |-- menu2.svg
|   |   |   |-- multimedia.svg
|   |   |   |-- sandbox.svg
|   |   |   |-- social.svg
|   |   |   |-- terminal.svg
|   |   |   |-- text-editor.svg
|   |   |   `-- web-browser.svg
|   |   |-- thermometer.svg
|   |   |-- titlebar
|   |   |   |-- blocks
|   |   |   |   |-- close_focus.svg
|   |   |   |   |-- close_focus_hover.svg
|   |   |   |   |-- close_normal.svg
|   |   |   |   |-- close_normal_hover.svg
|   |   |   |   |-- floating_focus_active.svg
|   |   |   |   |-- floating_focus_active_hover.svg
|   |   |   |   |-- floating_focus_inactive.svg
|   |   |   |   |-- floating_focus_inactive_hover.svg
|   |   |   |   |-- floating_normal_active.svg
|   |   |   |   |-- floating_normal_active_hover.svg
|   |   |   |   |-- floating_normal_inactive.svg
|   |   |   |   |-- floating_normal_inactive_hover.svg
|   |   |   |   |-- maximized_focus_active.svg
|   |   |   |   |-- maximized_focus_active_hover.svg
|   |   |   |   |-- maximized_focus_inactive.svg
|   |   |   |   |-- maximized_focus_inactive_hover.svg
|   |   |   |   |-- maximized_normal_active.svg
|   |   |   |   |-- maximized_normal_active_hover.svg
|   |   |   |   |-- maximized_normal_inactive.svg
|   |   |   |   |-- maximized_normal_inactive_hover.svg
|   |   |   |   |-- minimize_focus.svg
|   |   |   |   |-- minimize_focus_hover.svg
|   |   |   |   |-- minimize_normal.svg
|   |   |   |   |-- minimize_normal_hover.svg
|   |   |   |   |-- ontop_focus_active.svg
|   |   |   |   |-- ontop_focus_active_hover.svg
|   |   |   |   |-- ontop_focus_inactive.svg
|   |   |   |   |-- ontop_focus_inactive_hover.svg
|   |   |   |   |-- ontop_normal_active.svg
|   |   |   |   |-- ontop_normal_active_hover.svg
|   |   |   |   |-- ontop_normal_inactive.svg
|   |   |   |   |-- ontop_normal_inactive_hover.svg
|   |   |   |   |-- sticky_focus_active.svg
|   |   |   |   |-- sticky_focus_active_hover.svg
|   |   |   |   |-- sticky_focus_inactive.svg
|   |   |   |   |-- sticky_focus_inactive_hover.svg
|   |   |   |   |-- sticky_normal_active.svg
|   |   |   |   |-- sticky_normal_active_hover.svg
|   |   |   |   |-- sticky_normal_inactive.svg
|   |   |   |   `-- sticky_normal_inactive_hover.svg
|   |   |   |-- lines
|   |   |   |   |-- close_focus.svg
|   |   |   |   |-- close_focus_hover.svg
|   |   |   |   |-- close_normal.svg
|   |   |   |   |-- close_normal_hover.svg
|   |   |   |   |-- floating_focus_active.svg
|   |   |   |   |-- floating_focus_active_hover.svg
|   |   |   |   |-- floating_focus_inactive.svg
|   |   |   |   |-- floating_focus_inactive_hover.svg
|   |   |   |   |-- floating_normal_active.svg
|   |   |   |   |-- floating_normal_active_hover.svg
|   |   |   |   |-- floating_normal_inactive.svg
|   |   |   |   |-- floating_normal_inactive_hover.svg
|   |   |   |   |-- maximized_focus_active.svg
|   |   |   |   |-- maximized_focus_active_hover.svg
|   |   |   |   |-- maximized_focus_inactive.svg
|   |   |   |   |-- maximized_focus_inactive_hover.svg
|   |   |   |   |-- maximized_normal_active.svg
|   |   |   |   |-- maximized_normal_active_hover.svg
|   |   |   |   |-- maximized_normal_inactive.svg
|   |   |   |   |-- maximized_normal_inactive_hover.svg
|   |   |   |   |-- minimize_focus.svg
|   |   |   |   |-- minimize_focus_hover.svg
|   |   |   |   |-- minimize_normal.svg
|   |   |   |   |-- minimize_normal_hover.svg
|   |   |   |   |-- ontop_focus_active.svg
|   |   |   |   |-- ontop_focus_active_hover.svg
|   |   |   |   |-- ontop_focus_inactive.svg
|   |   |   |   |-- ontop_focus_inactive_hover.svg
|   |   |   |   |-- ontop_normal_active.svg
|   |   |   |   |-- ontop_normal_active_hover.svg
|   |   |   |   |-- ontop_normal_inactive.svg
|   |   |   |   |-- ontop_normal_inactive_hover.svg
|   |   |   |   |-- sticky_focus_active.svg
|   |   |   |   |-- sticky_focus_active_hover.svg
|   |   |   |   |-- sticky_focus_inactive.svg
|   |   |   |   |-- sticky_focus_inactive_hover.svg
|   |   |   |   |-- sticky_normal_active.svg
|   |   |   |   |-- sticky_normal_active_hover.svg
|   |   |   |   |-- sticky_normal_inactive.svg
|   |   |   |   `-- sticky_normal_inactive_hover.svg
|   |   |   |-- stoplight
|   |   |   |   |-- close_focus.svg
|   |   |   |   |-- close_focus_hover.svg
|   |   |   |   |-- close_normal.svg
|   |   |   |   |-- close_normal_hover.svg
|   |   |   |   |-- floating_focus_active.svg
|   |   |   |   |-- floating_focus_active_hover.svg
|   |   |   |   |-- floating_focus_inactive.svg
|   |   |   |   |-- floating_focus_inactive_hover.svg
|   |   |   |   |-- floating_normal_active.svg
|   |   |   |   |-- floating_normal_active_hover.svg
|   |   |   |   |-- floating_normal_inactive.svg
|   |   |   |   |-- floating_normal_inactive_hover.svg
|   |   |   |   |-- maximized_focus_active.svg
|   |   |   |   |-- maximized_focus_active_hover.svg
|   |   |   |   |-- maximized_focus_inactive.svg
|   |   |   |   |-- maximized_focus_inactive_hover.svg
|   |   |   |   |-- maximized_normal_active.svg
|   |   |   |   |-- maximized_normal_active_hover.svg
|   |   |   |   |-- maximized_normal_inactive.svg
|   |   |   |   |-- maximized_normal_inactive_hover.svg
|   |   |   |   |-- minimize_focus.svg
|   |   |   |   |-- minimize_focus_hover.svg
|   |   |   |   |-- minimize_normal.svg
|   |   |   |   |-- minimize_normal_hover.svg
|   |   |   |   |-- ontop_focus_active.svg
|   |   |   |   |-- ontop_focus_active_hover.svg
|   |   |   |   |-- ontop_focus_inactive.svg
|   |   |   |   |-- ontop_focus_inactive_hover.svg
|   |   |   |   |-- ontop_normal_active.svg
|   |   |   |   |-- ontop_normal_active_hover.svg
|   |   |   |   |-- ontop_normal_inactive.svg
|   |   |   |   |-- ontop_normal_inactive_hover.svg
|   |   |   |   |-- sticky_focus_active.svg
|   |   |   |   |-- sticky_focus_active_hover.svg
|   |   |   |   |-- sticky_focus_inactive.svg
|   |   |   |   |-- sticky_focus_inactive_hover.svg
|   |   |   |   |-- sticky_normal_active.svg
|   |   |   |   |-- sticky_normal_active_hover.svg
|   |   |   |   |-- sticky_normal_inactive.svg
|   |   |   |   `-- sticky_normal_inactive_hover.svg
|   |   |   `-- win10
|   |   |       |-- close_focus.svg
|   |   |       |-- close_normal.svg
|   |   |       |-- close_normal_hover.svg
|   |   |       |-- floating_focus_active.svg
|   |   |       |-- floating_focus_active_hover.svg
|   |   |       |-- floating_focus_inactive.svg
|   |   |       |-- floating_focus_inactive_hover.svg
|   |   |       |-- floating_normal_active.svg
|   |   |       |-- floating_normal_active_hover.svg
|   |   |       |-- floating_normal_inactive.svg
|   |   |       |-- floating_normal_inactive_hover.svg
|   |   |       |-- maximized_focus_active.svg
|   |   |       |-- maximized_focus_active_hover.svg
|   |   |       |-- maximized_focus_inactive.svg
|   |   |       |-- maximized_focus_inactive_hover.svg
|   |   |       |-- maximized_normal_active.svg
|   |   |       |-- maximized_normal_active_hover.svg
|   |   |       |-- maximized_normal_inactive.svg
|   |   |       |-- maximized_normal_inactive_hover.svg
|   |   |       |-- minimize_focus.svg
|   |   |       |-- minimize_focus_hover.svg
|   |   |       |-- minimize_normal.svg
|   |   |       `-- minimize_normal_hover.svg
|   |   |-- toggled-off.svg
|   |   |-- toggled-on.svg
|   |   `-- volume-high.svg
|   |-- init.lua
|   |-- surreal-theme
|   |   `-- init.lua
|   `-- wallpapers
|       |-- AUTHORS
|       |-- locksreen-bg.jpg
|       |-- midnight-wallpaper.jpg
|       |-- midnight.jpg
|       |-- morn.jpeg
|       |-- morn.jpg
|       |-- morning-wallpaper.jpg
|       |-- night-wallpaper.jpg
|       |-- night.jpg
|       |-- noon-wallpaper.jpg
|       |-- noon.jpeg
|       `-- noon.jpg
|-- utilities
|   |-- profile-image
|   `-- snap
`-- widget
    |-- airplane-mode
    |   |-- airplane_mode
    |   |-- icons
    |   |   |-- airplane-mode-off.svg
    |   |   `-- airplane-mode.svg
    |   `-- init.lua
    |-- battery
    |   |-- icons
    |   |   |-- battery-alert-red.svg
    |   |   |-- battery-alert.svg
    |   |   |-- battery-charging-10.svg
    |   |   |-- battery-charging-20.svg
    |   |   |-- battery-charging-30.svg
    |   |   |-- battery-charging-50.svg
    |   |   |-- battery-charging-60.svg
    |   |   |-- battery-charging-80.svg
    |   |   |-- battery-charging-90.svg
    |   |   |-- battery-discharging-100.svg
    |   |   |-- battery-discharging-20.svg
    |   |   |-- battery-discharging-30.svg
    |   |   |-- battery-discharging-50.svg
    |   |   |-- battery-discharging-60.svg
    |   |   |-- battery-discharging-80.svg
    |   |   |-- battery-discharging-90.svg
    |   |   |-- battery-fully-charged.svg
    |   |   |-- battery-unknown.svg
    |   |   `-- battery.svg
    |   `-- init.lua
    |-- blue-light
    |   |-- icons
    |   |   |-- blue-light-off.svg
    |   |   `-- blue-light.svg
    |   `-- init.lua
    |-- bluetooth
    |   |-- icons
    |   |   |-- bluetooth-connected.svg
    |   |   |-- bluetooth-off.svg
    |   |   |-- bluetooth-scanning.svg
    |   |   |-- bluetooth.svg
    |   |   `-- loading.svg
    |   `-- init.lua
    |-- bluetooth-toggle
    |   |-- icons
    |   |   |-- bluetooth-off.svg
    |   |   |-- bluetooth.svg
    |   |   `-- loading.svg
    |   `-- init.lua
    |-- blur-slider
    |   `-- init.lua
    |-- blur-toggle
    |   |-- icons
    |   |   `-- effects-off.svg
    |   `-- init.lua
    |-- brightness-slider
    |   `-- init.lua
    |-- clickable-container
    |   `-- init.lua
    |-- clock
    |   `-- init.lua
    |-- control-center-switch
    |   |-- icons
    |   |   `-- control-center.svg
    |   `-- init.lua
    |-- control-center-toggle
    |   |-- icons
    |   |   `-- control-center.svg
    |   `-- init.lua
    |-- cpu-meter
    |   `-- init.lua
    |-- dont-disturb
    |   |-- disturb_status
    |   |-- icons
    |   |   |-- dont-disturb.svg
    |   |   `-- notify.svg
    |   `-- init.lua
    |-- email
    |   |-- icons
    |   |   |-- email-1.svg
    |   |   |-- email-2.svg
    |   |   |-- email-3.svg
    |   |   |-- email-4.svg
    |   |   |-- email-5.svg
    |   |   |-- email-6.svg
    |   |   |-- email-7.svg
    |   |   |-- email-8.svg
    |   |   |-- email-9+.svg
    |   |   |-- email-9.svg
    |   |   |-- email-unread.svg
    |   |   `-- email.svg
    |   `-- init.lua
    |-- end-session
    |   `-- init.lua
    |-- global-search
    |   `-- init.lua
    |-- harddrive-meter
    |   `-- init.lua
    |-- info-center-toggle
    |   |-- icons
    |   |   `-- info-center.svg
    |   `-- init.lua
    |-- layoutbox
    |   `-- init.lua
    |-- mpd
    |   |-- content
    |   |   |-- album-cover.lua
    |   |   |-- init.lua
    |   |   |-- media-buttons.lua
    |   |   `-- song-info.lua
    |   |-- icons
    |   |   |-- next.svg
    |   |   |-- pause.svg
    |   |   |-- play.svg
    |   |   |-- prev.svg
    |   |   `-- vinyl.svg
    |   |-- init.lua
    |   `-- mpd-music-updater.lua
    |-- network
    |   |-- icons
    |   |   |-- airplane-mode-off.svg
    |   |   |-- airplane-mode.svg
    |   |   |-- loading.svg
    |   |   |-- wifi-off.svg
    |   |   |-- wifi-strength-1-alert.svg
    |   |   |-- wifi-strength-1-lock.svg
    |   |   |-- wifi-strength-1.svg
    |   |   |-- wifi-strength-2-alert.svg
    |   |   |-- wifi-strength-2-lock.svg
    |   |   |-- wifi-strength-2.svg
    |   |   |-- wifi-strength-3-alert.svg
    |   |   |-- wifi-strength-3-lock.svg
    |   |   |-- wifi-strength-3.svg
    |   |   |-- wifi-strength-4-alert.svg
    |   |   |-- wifi-strength-4-lock.svg
    |   |   |-- wifi-strength-4.svg
    |   |   |-- wifi-strength-alert-outline.svg
    |   |   |-- wifi-strength-alert.svg
    |   |   |-- wifi-strength-empty.svg
    |   |   |-- wifi-strength-lock-outline.svg
    |   |   |-- wifi-strength-off-outline.svg
    |   |   |-- wifi-strength-off.svg
    |   |   |-- wifi-strength-outline.svg
    |   |   |-- wifi.svg
    |   |   |-- wired-alert.svg
    |   |   |-- wired-off.svg
    |   |   `-- wired.svg
    |   `-- init.lua
    |-- notif-center
    |   |-- build-notifbox
    |   |   |-- empty-notifbox.lua
    |   |   |-- init.lua
    |   |   |-- notifbox-builder.lua
    |   |   |-- notifbox-geometry.lua
    |   |   |-- notifbox-scroller.lua
    |   |   `-- notifbox-ui-elements.lua
    |   |-- clear-all
    |   |   `-- init.lua
    |   |-- icons
    |   |   |-- clear_all.svg
    |   |   |-- delete.svg
    |   |   |-- empty-notification.svg
    |   |   `-- new-notif.svg
    |   `-- init.lua
    |-- open-default-app
    |   `-- init.lua
    |-- package-updater
    |   |-- icons
    |   |   |-- package-up.svg
    |   |   `-- package.svg
    |   `-- init.lua
    |-- ram-meter
    |   `-- init.lua
    |-- screen-recorder
    |   |-- icons
    |   |   |-- audio.svg
    |   |   |-- back.svg
    |   |   |-- close-screen.svg
    |   |   |-- recorder-countdown.svg
    |   |   |-- recorder-off.svg
    |   |   |-- recorder-on.svg
    |   |   |-- recording-button.svg
    |   |   |-- settings.svg
    |   |   `-- start-recording-button.svg
    |   |-- init.lua
    |   |-- screen-recorder-config.lua
    |   |-- screen-recorder-scripts.lua
    |   |-- screen-recorder-ui-backend.lua
    |   `-- screen-recorder-ui.lua
    |-- search-apps
    |   `-- init.lua
    |-- tag-list
    |   `-- init.lua
    |-- task-list
    |   `-- init.lua
    |-- temperature-meter
    |   `-- init.lua
    |-- tray-toggle
    |   |-- icons
    |   |   |-- left-arrow.svg
    |   |   `-- right-arrow.svg
    |   `-- init.lua
    |-- user-profile
    |   `-- init.lua
    |-- volume-slider
    |   `-- init.lua
    |-- weather
    |   |-- icons
    |   |   |-- d_rain.svg
    |   |   |-- dbroken_clouds.svg
    |   |   |-- dfew_clouds.svg
    |   |   |-- dmist.svg
    |   |   |-- dscattered_clouds.svg
    |   |   |-- dshower_rain.svg
    |   |   |-- dthunderstorm.svg
    |   |   |-- moon_icon.svg
    |   |   |-- n_rain.svg
    |   |   |-- nbroken_clouds.svg
    |   |   |-- nfew_clouds.svg
    |   |   |-- nmist.svg
    |   |   |-- nscattered_clouds.svg
    |   |   |-- nshower_rain.svg
    |   |   |-- nthunderstorm.svg
    |   |   |-- refresh.svg
    |   |   |-- snow.svg
    |   |   |-- sun_icon.svg
    |   |   |-- sunrise.svg
    |   |   |-- sunset.svg
    |   |   `-- weather-error.svg
    |   `-- init.lua
    `-- xdg-folders
        |-- documents.lua
        |-- downloads.lua
        |-- home.lua
        |-- icons
        |   |-- folder-documents.svg
        |   |-- folder-download.svg
        |   |-- folder-pictures.svg
        |   |-- folder-videos.svg
        |   |-- no.svg
        |   |-- open-folder.svg
        |   |-- user-home.svg
        |   |-- user-trash-empty.svg
        |   |-- user-trash-full.svg
        |   `-- yes.svg
        |-- init.lua
        |-- pictures.lua
        |-- trash.lua
        `-- videos.lua
```

You need sufficient awesomewm and lua knowledge for this. Our config was a fork of [manilarome](https://github.com/manilarome)'s beautiful dotfiles. We used the SURREAL Theme as our base. You can edit the configs freely if you want. 

Check out Manilarome's awesome project in his [Github](https://github.com/manilarome/the-glorious-dotfiles/tree/master/config/awesome/surreal)

I personally like his work a lot and appreciate him for making this much awesome a project.

## Changing the Login Screen Theme

We use sddm for our login manager, the configuration file is in [etc/sddm.conf.d/kde_settings.conf](./etc/sddm.conf.d/kde_settings.conf) and the themes are in [usr/share/sddm/themes](./usr/share/sddm/themes)

Calinix features 3 themes for now:

1. Calinix-Redrock

![](https://media.discordapp.net/attachments/877804190267760644/890884630016827393/covsddm.png?width=1078&height=589)

2. Calinix-SDDM

![](https://media.discordapp.net/attachments/848238638005354536/890803165702811678/unknown.png?width=1046&height=589)

3. Calinix-Sugar-Candy

![](https://media.discordapp.net/attachments/848238638005354536/890803322871750667/unknown.png?width=1046&height=589)

Edit or Add your own!

## Editing Package lists

The [packages file](./packages.x86_64) contains all the packages of live boot, from drivers to kernels, all of them.

## Adding AUR Packages to Calinix

If a package you want to include is in the AUR, follow the given steps:

1. Go to the AUR Homepage of the package and Download its snapshot 

2. Extract the snapshot, and open the extracted folder in terminal

3. Run `makepkg` in the folder

4. After building completes, you will find a tar.zst file in the same folder. Copy and Paste that tar.zst file in [opt/calinix](./opt/calinix) and run the `update.sh` in the folder. (You should be in the opt/calinix folder when you run the script)

5. Then you can add the package name in packages.x86_64 file

## Building the iso

After you make your necessary changes, just run [devready.sh](./devready.sh) and then [steps.sh](./steps.sh) file and wait till the iso builds.

The iso will be in a newly created /out folder

## Cleaning up

To rebuild the iso, you have to clean up some stuff. Delete the ezreleng and work folders and rerun `steps.sh`

## Messing with Configuration files

All the dotfiles are in /etc/skel including alacritty configs and bashrc

## COOL

Now you are ready, start contritbuting to Calinix now! For any support join our [discord server](https://discord.gg/MtQddKmevk) or mail me at arghyasarkar.nolan@gmail.com