/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/notification-daemon/notification-daemon &
/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh 
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
xfce4-panel &
nm-applet &
xrdb .Xresources
synclient PalmDetect=1
synclient HorizTwoFingerScroll=1
synclient TapButton2=3
synclient TapButton3=2
mouseid=$(xinput list | grep Razer | awk '{printf $6}' | sed 's/[^0-9]*//g' | rev | cut -c 1- | rev)
xinput set-button-map $mouseid 3 2 1 4 5 6 7 8 9 10 11
autocutsel -selection PRIMARY -fork
keepassx -min &
exec xmonad
