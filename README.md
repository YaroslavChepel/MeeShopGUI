# MeeShopGUI

**MeeShopGUI** is a **brand-new**, **working** app store for Nokia N9 / N950 devices running MeeGo Harmattan. MeeShopGUI uses [OpenRepos](http://openrepos.net) as its database.

## Bugz
* Bug with app list when searching
* Tools category does not work

## Installing

You need to have [Developer Mode](http://wunderwungiel.pl/MeeGo/posts/devmode-22.04.2023.html) enabled and [Aegis-hack](https://talk.maemo.org/showthread.php?t=90750).
Python needs to be installed. Run **Terminal**, and type following commands:

    devel-su
    (enter "rootme" without quotes as password)
    aegis-apt-get install python3 python3.1 -y --force-yes

Download latest release (`.deb` file) from [Releases](https://github.com/YaroslavChepel/MeeShopGUI/releases) page, and transfer it to N9, saving in **MyDocs** (i.e. **Nokia N9** drive when connected to PC).
Run the **Terminal** again, and type following commands:

    devel-su
    (enter "rootme" without quotes as password)
    cd /home/user/MyDocs
    aegis-dpkg -i meeshopgui_RELEASE_armel.deb
    (replace RELEASE with the proper number, i.e. 0.1.0)
If you don't see any errors, you're ready to use MeeShop!

## How to use
- **All Apps** - a page with all apps, Top Bar is clickable, сlicking on it will open a list of categories
- **RSS Feeds** - a list of **working** RSS feeds for MeeGo, for selected countries

## Screenshots
  (sorry i didn't make any screenshots)
  
## Creators
[**IarChep**](https://github.com/YaroslavChepel) - main developer. Ask him on [Telegram](https://t.me/iaroslavchep)
[**WunderWuingiel**](https://github.com/WunderWungiel) - main developer. Ask him on [Telegram](https://t.me/WunderW_PL)

## Special thanks
[**Linux Mobile World Group**](https://t.me/linuxmobile_world) - Mobile linux lovers community
