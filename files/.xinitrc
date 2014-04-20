#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

amixer -c 0 cset name='IEC958 Playback Switch' on

# Start a D-Bus session
# Source the below file only if you do not already use the default xinitrc skeleton. 
# Otherwise you will end up with multiple dbus sessions.
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

case $1 in
	gnome) exec gnome-session ;;
	awesome) exec awesome ;;
esac


# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
#exec awesome
