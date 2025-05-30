# NOTE:
# Audio based settings  / packages

# INFO:
# Pipewire packages
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage wireplumber # Session / policy manager implementation for PipeWire
AddPackage gst-plugin-pipewire # Multimedia graph framework - pipewire plugin

# INFO:
# Other packages
AddPackage alsa-utils # Advanced Linux Sound Architecture - Utilities
AddPackage libpulse # A featureful, general-purpose sound server (client library)
AddPackage libsamplerate # An audio sample rate conversion library
AddPackage pulseaudio-bluetooth # Bluetooth support for PulseAudio

# INFO:
# Audio control programs
AddPackage ffmpeg # Complete solution to record, convert and stream audio and video
AddPackage pamixer # Pulseaudio command-line mixer like amixer
AddPackage pavucontrol # PulseAudio Volume Control
AddPackage --foreign pulseaudio-ctl # Control pulseaudio volume from the shell or mapped to keyboard shortcuts.

# INFO:
# Unnecessary files
IgnorePath /usr/share/pipewire/pipewire.conf

# INFO:
# Pipewire links
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket
