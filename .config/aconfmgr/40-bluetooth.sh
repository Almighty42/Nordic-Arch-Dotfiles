# NOTE:
# Bluetooth based settings  / packages

# INFO:
# Bluetooth packages
AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack

# INFO:
# Unnecessary files
IgnorePath '/var/lib/blueman/*'
IgnorePath '/var/lib/bluetooth/*'

# INFO:
# Bluetooth control programs
AddPackage bluetui # TUI for managing bluetooth devices

# INFO:
# Bluetooth links
CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service

# INFO:
# Bluetooth config
CopyFile /etc/bluetooth/main.conf
