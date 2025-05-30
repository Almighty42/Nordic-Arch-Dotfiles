# NOTE:
# BASE PACKAGES

# INFO:
# System packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage zram-generator # Systemd unit generator for zram devices

# INFO:
# Packages relevant to the functioning of the system
AddPackage man-db # A utility for reading man pages
AddPackage git # the fast distributed version control system

# INFO:
# X11 / Xorg
AddPackage xorg-server # Xorg X server
AddPackage xorg-xdpyinfo # Display information utility for X
AddPackage xorg-xev # Print contents of X events
AddPackage xorg-xinit # X.Org initialisation program
AddPackage xorg-xrandr # Primitive command line interface to RandR extension
AddPackage xdg-utils # Command line tools that assist applications with a variety of desktop integration tasks
# INFO:
# File copy
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
CopyFile /usr/share/X11/xkb/symbols/pc
CopyFile /etc/default/grub

# INFO:
# Various drivers
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage intel-media-driver # Intel Media Driver for VAAPI — Broadwell+ iGPUs
AddPackage vulkan-intel # Open-source Vulkan driver for Intel GPUs

# INFO:
# Security stuff
CreateDir /etc/fail2ban/fail2ban.d
CreateDir /etc/fail2ban/jail.d
CreateLink /etc/systemd/system/multi-user.target.wants/fail2ban.service /usr/lib/systemd/system/fail2ban.service
CreateLink /etc/systemd/system/multi-user.target.wants/ip6tables.service /usr/lib/systemd/system/ip6tables.service
CreateLink /etc/systemd/system/multi-user.target.wants/iptables.service /usr/lib/systemd/system/iptables.service
