![Static Badge](https://img.shields.io/badge/reMarkable-v3.10.2-green)
[![rm1](https://img.shields.io/badge/rM1-supported-green)](https://remarkable.com/store/remarkable)
[![rm2](https://img.shields.io/badge/rM2-supported-green)](https://remarkable.com/store/remarkable-2)
[![opkg](https://img.shields.io/badge/OPKG-neofetch-blue)](https://toltec-dev.org/)
[![Discord](https://img.shields.io/discord/385916768696139794.svg?label=reMarkable&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/ATqQGfu)

![neofetch-rM](https://github.com/rM-self-serve/webinterface-wifi/assets/122753594/6d3e3492-c5a4-4cb0-8900-f6d42ef21197)
<h3 align="center"><img src="https://i.imgur.com/ZQI2EYz.png" alt="logo" height="100px"></h3>
<p align="center">A command-line system information tool written in bash 3.2+</p>
<p align="center">Ported to ReMarkable Tablet</p>

<p align="center">
<a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<a href="https://repology.org/metapackage/neofetch"><img src="https://repology.org/badge/tiny-repos/neofetch.svg" alt="Packaging status"></a>
</p>

<img src="https://i.imgur.com/GFmC5Ad.png" alt="neofetch" align="right" height="240px">

## neofetch-rM Tweaks

- Codex Linux with ascii art of rM
- Xochitl software version
- Tweak config default to show /home when displaying disk
- Tweak shell function to show bash version
- Tweak battery function to report on any power supply in /sys/class/power_supply/

## neofetch-rM Limitations

- Images do not work as there is no w3m support
- Shell will display bash even if using sh
- May not function correctly on any other device

## Installation/Removal

**It is recommended to install via the [toltec package manager](https://toltec-dev.org/).** 

### With toltec

```
$ opkg update
$ opkg install neofetch 
$ opkg remove neofetch 
```

### No toltec

## Install

`$ wget https://raw.githubusercontent.com/rM-self-serve/neofetch-rM/master/install-neofetch-rM.sh && bash install-neofetch-rM.sh`

## Remove

`$ wget https://raw.githubusercontent.com/rM-self-serve/neofetch-rM/master/remove-neofetch-rM.sh && bash remove-neofetch-rM.sh`

## Use

`$ source ~/.bashrc` 
-  Only the first time

`$ neofetch`

## Original Description

Neofetch is a command-line system information tool written in `bash 3.2+`. Neofetch displays information about your operating system, software and hardware in an aesthetic and visually pleasing way.

The overall purpose of Neofetch is to be used in screen-shots of your system. Neofetch shows the information other people want to see. There are other tools available for proper system statistic/diagnostics.

The information by default is displayed alongside your operating system's logo. You can further configure Neofetch to instead use an image, a custom ASCII file, your wallpaper or nothing at all.

<img src="https://i.imgur.com/lUrkQBN.png" alt="neofetch" align="right" height="240px">

You can further configure Neofetch to display exactly what you want it to. Through the use of command-line flags and the configuration file you can change existing information outputs or add your own custom ones.

Neofetch supports almost 150 different operating systems. From Linux to Windows, all the way to more obscure operating systems like Minix, AIX and Haiku. If your favourite operating system is unsupported: Open up an issue and support will be added.


### More: \[[Wiki](https://github.com/dylanaraps/neofetch/wiki)\]
