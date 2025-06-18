![Nordic Arch Dotfiles Banner(1)](https://github.com/user-attachments/assets/0f0b42cb-fc82-4e0e-a582-6acaf3fdc6ef)

<hr />

## Introduction
This is my first linux rice - Arch based with a focus on the Nord/ic color pallete.  
**Keep in mind** that you probably *won't need* most of the programs and configs present here, pick what you need and discard the rest.

## Preview
<div align="center">
  <img src="https://i.imgur.com/zedcK1o.png" alt="Description of Image 1" width="49%">
  <img src="https://i.imgur.com/3H3OUpd.png" alt="Description of Image 2" width="49%">
  <br> <img src="https://i.imgur.com/6f0tpMA.png" alt="Description of Image 3" width="49%">
  <img src="https://i.imgur.com/YmSYi0D.png" alt="Description of Image 4" width="49%">
  <br> <img src="https://i.imgur.com/S8LaVfG.png" alt="Description of Image 5" width="49%">
  <img src="https://i.imgur.com/fZROISH.png" alt="Description of Image 6" width="49%">
</div>

## Installation
**IMPORTANT** - I do not 100% guarantee that the following script/s will **correctly** install the included packages on your machine. You are better off installing the tools / packages manually yourself.
## The manual way
Simply run this script in your home directory ( /home/\<your-username>/ ) and then choose which tools / packages to install on your machine by going trough the .config folder. This script requires git so make sure you have it on your machine!
```bash
curl -fsSL https://raw.githubusercontent.com/Almighty42/Nordic-Arch-Dotfiles/main/install.sh | bash
```
**This will wipe your local dotfiles, back them up!**

## Scripted installation for packages
If you don't want to install packages yourself, you can use **aconfmgr** tool to do the boring part for you. This tool is **not developed** by me, and it may or may not install everything correctly. 
Bugs related to the tool itself can also occur, although I've found it to be stable enough for my own needs.

### 1. Install aconfmgr tool
Run the following command in your terminal, and follow trough the installation process. If something fails, try manually installing the package from AUR.
```bash
git clone https://aur.archlinux.org/aconfmgr-git.git && cd aconfmgr-git && makepkg -si
```

### 2. Run the aconfmgr apply command
Simply run
```bash
aconfmgr apply
```
And go trough the installation process. If prompted with a Y/N - type Y. If yay offers a couple of diffrent versions for some package you can just press enter ( the default option ).
Once the command finished work, reboot.

### 3. Finishing touches
First make sure you are connected to the internet
```bash
nmtui
```
Set the default shell as ZSH
```bash
chsh -s /bin/zsh
```

## Specs
- OS : [Linux Arch](https://wiki.archlinux.org/title/Main_page)
- Graphical server : [X11](https://en.wikipedia.org/wiki/X_Window_System)
- WM : [AwesomeWM](https://awesomewm.org/)
- Notifications daemon : [Dunst](https://dunst-project.org/)
- IDE : [Neovim](https://neovim.io/) ( modified [kickstart](https://github.com/nvim-lua/kickstart.nvim) config )
- Bar : [Polybar](https://github.com/polybar/polybar) ( modified [Murzchnvok](https://github.com/Murzchnvok/polybar-collection) config )
- Terminal : [Wezterm](https://wezterm.org/)
- Shell : [ZSH](https://wiki.archlinux.org/title/Zsh) ( [powerlevel10k](https://github.com/romkatv/powerlevel10k), [oh-my-zsh](https://ohmyz.sh/) )
- App launcher : [rofi](https://github.com/davatorium/rofi) ( modified [adi1090x](https://github.com/adi1090x/rofi) config )
- File explorer : [Ranger](https://github.com/ranger/ranger)
- Browser : Firefox ( modified config )
  - Start page : [nightTab](https://github.com/zombieFox/nightTab)
  - Side menu : [Sidebery](https://github.com/mbnuqw/sidebery) ( modified config )
- Fonts : Mostly [FiraCode-Nerd-Font](https://www.nerdfonts.com/)
- Fetch : [Neofetch](https://github.com/dylanaraps/neofetch)
- Compositor : [Picom](https://github.com/yshui/picom)
- Backup mangement : Custom scripts
- Music player : [Tauon-Music-Box](https://tauonmusicbox.rocks/) ( [Nord](https://github.com/Taiko2k/Tauon/discussions/461) theme )
- Boot screen : [Plymouth](https://wiki.archlinux.org/title/Plymouth)

## Credits
These are some of the linux rices / configs I took inspiration from and used in my dotfiles:
-  [Barbaross93/Nebula](https://github.com/Barbaross93/Nebula)
-  [CryingSausage firefox](https://www.reddit.com/r/unixporn/comments/glbl4v/oc_its_not_normal_to_want_my_firefox_to_sit_on_my)
-  [danxxcruz nord theme](https://www.reddit.com/r/unixporn/comments/w341yh/gnome_i_decided_to_go_full_nord)
-  [adi1090x rofi plugins](https://github.com/adi1090x/rofi)
-  [Murzchnvok polybar configs](https://github.com/Murzchnvok/polybar-collection)
-  [dxnst wallpaper/s](https://github.com/dxnst/nord-wallpapers)
-  [Unixporn subreddit](https:/www.reddit.com/r/unixporn/)
