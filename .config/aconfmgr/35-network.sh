# NOTE:
# Network packages and configuration

# INFO:
# Packages
AddPackage networkmanager # Network connection manager and user applications
AddPackage wget # Network utility to retrieve files from the web
AddPackage wireless-regdb # Central Regulatory Domain Database
AddPackage fail2ban # Bans IPs after too many failed authentication attempts
AddPackage inetutils # A collection of common network programs
AddPackage --foreign networkmanager-dmenu-git # Control NetworkManager via dmenu

# INFO:
# Configuration
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service
CopyFile /etc/iptables/ip6tables.rules
CopyFile /etc/iptables/iptables.rules
