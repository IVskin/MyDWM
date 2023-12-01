#!/bin/bash

function run {
	if ! pgrep -f $1; then
		$@ &
	fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal
#trayer --expand true --widthtype request --transparent true --alpha 255 --edge bottom --align right &

run xfce4-clipman &
xrdb -load ~/.xresources & 
#xsetwacom --set "Wacom One by Wacom S Pen stylus" Mode "Absolute" &
#xsetwacom --set "Wacom One by Wacom S Pen eraser" Mode "Absolute" &
run /usr/lib/xfce-polkit/xfce-polkit &
run xfce4-power-manager &
#wal --theme ~/dracula.json &
wmname LG3D &
setxkbmap -option keypad:pointerkeys &
xwallpaper --zoom ~/Pictures/wp &
slstatus &
run nm-applet &
#run blueberry-tray &
#picom -b  --config ~/.config/picom.conf &
numlockx on &
run volumeicon &
#run searx-run & 
#run whatsdesk &
#run kdocker whatstux &
#alacritty -e 'qbittorrent' &
