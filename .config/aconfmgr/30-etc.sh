# NOTE:
# Etc files

# INFO:
# Etc file copy

CopyFile /etc/hostname
# CopyFile /etc/lightdm/lightdm-webkit2-greeter.conf
# CopyFile /etc/lightdm/lightdm.conf
# CopyFile /etc/locale.conf
# CopyFile /etc/locale.gen
# CopyFile /etc/mkinitcpio.conf
# CopyFile /etc/pacman.conf
# CopyFile /etc/pacman.d/mirrorlist
# CopyFile /etc/shells
# CopyFile /etc/subgid
# CopyFile /etc/subuid
# CopyFile /etc/systemd/zram-generator.conf
# CopyFile /etc/updatedb.conf
# CopyFile /etc/vconsole.conf

IgnorePath "/etc/sudoers"
IgnorePath "/etc/sudoers.d"

# Timezone settings
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Belgrade
