#!/bin/sh
xsetroot -cursor_name left_ptr

#feh --bg-fill 002.jpg &
swall 600 &

compton --vsync none --backend xrender -b

exec bspwm
