~/.screenlayout/tripvert.sh
~/.fehbg &
export CALIBRE_USE_DARK_PALETTE=1
redshift -O 4000K

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

exec i3
