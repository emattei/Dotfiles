# Notes about setting up
tlp is the battery management tool
For bluetooth
`sudo apt install bluez blueman`
To complete connection successfully. pipewire replaces pulseaudio.
`sudo apt install pipewire pipewire-pulse pipewire-jack pipewire-alsa pipewire-audio`

# Extra Hacks

Collection of hacks that might be useful in the future but not configured in these dotfiles.

### Cloning partitions

> **Hack 19** - _101 cool linux hacks_.

I should consider [clonezilla](https://clonezilla.org/) to clone the partition instead of doing incremental backup.\


### Write ISO to USB

> **Hack 20** - _101 cool linux hacks_.

[Bootiso](https://github.com/jsamr/bootiso) is a utility that performs extra checks when writing an ISO image to usb-disk.\

### Machine conf overview

> **Hack 21** - _101 cool linux hacks_.

[inxi](https://github.com/smxi/inxi) gives a complete report of the machine configuration and the system in general.\
Unfortunately is 100% perl.

### Change the default folders in linux

To change the default folders in linux (Documents, Downloads, Pictures, etc.) change the file:

`${HOME}/.config/users-dirs.dirs`

