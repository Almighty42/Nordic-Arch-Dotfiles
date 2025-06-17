# INFO:
# User packages / configuration

# INFO:
# Development
# AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
# AddPackage wezterm # A GPU-accelerated cross-platform terminal emulator and multiplexer
# AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
# AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs


# INFO:
# Desktop Enviroment
AddPackage picom # Lightweight compositor for X11
AddPackage awesome # Highly configurable framework window manager
AddPackage lightdm # A lightweight display manager
AddPackage lightdm-webkit2-greeter # LightDM greeter that uses WebKit2 for theming via HTML/JavaScript.
AddPackage dunst # Customizable and lightweight notification-daemon
AddPackage rofi # A window switcher, application launcher and dmenu replacement
# AddPackage plymouth # Graphical boot splash screen
AddPackage polybar # A fast and easy-to-use status bar

# INFO:
# Lightdm files
# CreateFile /usr/share/lightdm-webkit/themes/enkel/.Rhistory > /dev/null
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/background.jpg
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica\ Bold.woff
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica\ Bold.woff2
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica\ Italic.woff
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica\ Italic.woff2
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica.woff
# CopyFile /usr/share/lightdm-webkit/themes/enkel/assets/scientifica.woff2
# CopyFile /usr/share/lightdm-webkit/themes/enkel/index.html
# CopyFile /usr/share/lightdm-webkit/themes/enkel/index.theme
# CopyFile /usr/share/lightdm-webkit/themes/enkel/main.js
# CopyFile /etc/lightdm/lightdm-webkit2-greeter.conf
# CopyFile /etc/lightdm/lightdm.conf

# INFO:
# File viewers
# AddPackage ranger # Simple, vim-like file manager
# AddPackage okular # Document Viewer
# AddPackage mupdf # Lightweight PDF and XPS viewer
# AddPackage feh # Fast and light imlib2-based image viewer
# AddPackage mpd # Flexible, powerful, server-side application for playing music
# AddPackage mpc # Minimalist command line interface to MPD
# AddPackage opusfile # Library for opening, seeking, and decoding .opus files
# AddPackage calibre # Ebook management application

# INFO:
# File manipulation
# AddPackage gimp # GNU Image Manipulation Program
# AddPackage imagemagick # An image viewing/manipulation program

# INFO:
# GUI programs
# AddPackage firefox # Fast, Private & Safe Web Browser
# AddPackage --foreign tauon-music-box # A modern music player
# AddPackage --foreign tauon-music-box-debug # Detached debugging symbols for tauon-music-box
# AddPackage filelight # View disk usage information
# AddPackage qbittorrent # An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar
# AddPackage --foreign usbimager # Minimal GUI application to write compressed disk images to USB drives (GTK+ Frontend)
# AddPackage --foreign usbimager-debug # Detached debugging symbols for usbimager
# AddPackage virtualbox # Powerful x86 virtualization for enterprise as well as home use
# AddPackage virtualbox-host-modules-arch # Virtualbox host kernel modules for Arch Kernel
