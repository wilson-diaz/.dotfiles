
HOSTNAME=$(uname -n)

case "$HOSTNAME" in
	"darc")
		if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
				exec startx
		fi
		;;
	"wrkstn")
		if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
			exec sway
		fi
		;;
	*)
		eval "$(/opt/homebrew/bin/brew shellenv)"
		;;
esac

