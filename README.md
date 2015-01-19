# i3-dotfiles

I'm using RichiH/vcsh for dotfile management.

## Dependencies
Currently the following arch packages are used:
- [i3](https://www.archlinux.org/groups/x86_64/i3/) obviously (but i3status is
  not actually currently used)
- [dunst](https://www.archlinux.org/packages/?name=dunst) for notifications
- [gsimplecal](https://www.archlinux.org/packages/community/x86_64/gsimplecal/)
  a simple calendar widget
- [i3blocks](https://aur.archlinux.org/packages/i3blocks) for the status bar
- [kupfer](https://aur.archlinux.org/packages/kupfer/) as the application launcher
- [termite](https://wiki.archlinux.org/index.php/Termite) as the terminal emulator
- [compton](https://aur.archlinux.org/packages/compton/) to enable opacity for termite
- [polkit](https://www.archlinux.org/packages/?name=polkit) to allow non-root
  users to issue power-related commands
- [ttf-droid](https://www.archlinux.org/packages/community/any/ttf-droid/) as the font
- [mpc](https://www.archlinux.org/packages/?name=mpc) for mpd controls
- [npm-applet](https://www.archlinux.org/packages/?name=network-manager-applet)
  for network management
- [redshift](https://www.archlinux.org/packages/?name=redshift) for screen color
  temperature management
- [kalu](https://aur.archlinux.org/packages/kalu/) to get notified of pacman updates
- [feh](https://www.archlinux.org/packages/?name=feh) to set the background

## How to use
```
# Install dependencies
yaourt -S i3 dunst gsimplecal i3blocks kupfer termite compton polkit ttf-droid mpc network-manager-applet redshift kalu feh

# Clone  
vcsh clone git@github.com:deiwin/i3-dotfiles.git i3

# Set background
mkdir -p Pictures/Wallpapers
wget -O Pictures/Wallpapers/simple_rocket.png 'http://static.simpledesktops.com/uploads/desktops/2012/07/03/simpledesktops.png'
feh --bg-scale Pictures/Wallpapers/simple_rocket.png
```
PS. the background is stolen from a [/r/unixporn thread](http://www.reddit.com/r/unixporn/comments/2q6nbm/boringwmi3_fake_it_till_you_make_it/)
