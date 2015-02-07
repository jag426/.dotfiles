# initialize xbindkeys for e.g. volume control
xbindkeys
# swap caps and escape
setxkbmap -option caps:swapescape

# read .Xresources
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -merge ~/.Xresources

# f.lux
xflux -z 14850

# ping monitor
while true; do b=$(a=`ping 8.8.8.8 -c 1 2> /dev/null | head -n 2 | tail -n 1`; if [[ "$a" =~ "64 bytes from 8.8.8.8" ]]; then echo `echo $a | grep -o "time=[[:digit:]]*" | grep -o "[[:digit:]]*"`; else echo 10000; fi); b=`echo "l($b/3)" | bc -l`; echo "mypinggraph:add_value($b)" | awesome-client; sleep 3; done &
# bat monitor
while true; do a=`acpi | grep -o "[[:digit:]]*\%" | grep -o "[[:digit:]]*"`; echo "mybatbar:set_value($a)" | awesome-client; sleep 30; done &

# xcompmgr (transparency)
xcompmgr -c &
# unclutter (must be last before exec)
unclutter &
# start xfce
#exec startxfce4
# start xmonad
#exec xmonad
# start awesome
exec awesome
