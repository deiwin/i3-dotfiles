# i3-dotfiles for an Ubuntu installation

I'm using RichiH/vcsh for dotfile management.

## Dependencies
Currently the following arch packages are used:
- **i3** obviously (but i3status is not actually currently used)
- **suckless-tools** for dmenu
- **i3blocks** for the status bar
- **dunst** for notifications
- **gsimplecal** a simple calendar widget
- **redshift** for screen color temperature management
- **feh** to set the background
- **jq** to parse i3 IPC messages
- **caffeine** to keep the screen from falling asleep during fullscreen apps

Install cVim for chromium: https://github.com/1995eaton/chromium-vim

## How to use
```
# Add i3 repo
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring

# Add caffeine PPA
sudo add-apt-repository ppa:caffeine-developers/ppa

# Install dependencies
sudo apt-get update
sudo apt-get install i3 suckless-tools dunst gsimplecal i3blocks fonts-droid redshift feh jq xfce4-terminal caffeine

# Disable xfce4-notifyd. I use dunst instead
sudo mv /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service.disabled
# or
# sudo apt-get remove xfce4-notifyd

# Clone  
vcsh clone git@github.com:deiwin/i3-dotfiles.git i3

# Set background
mkdir -p Pictures/Wallpapers
wget -O Pictures/Wallpapers/simple_rocket.png 'http://static.simpledesktops.com/uploads/desktops/2012/07/03/simpledesktops.png'
ln -s Pictures/Wallpapers/simple_rocket.png .wallpaper
feh  --bg-scale .wallpaper
```
PS. the background is stolen from a [/r/unixporn thread](http://www.reddit.com/r/unixporn/comments/2q6nbm/boringwmi3_fake_it_till_you_make_it/)
