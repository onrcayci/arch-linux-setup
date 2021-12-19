#!/usr/bin/env bash

# Print the keybindings for SpectrWM
cat << EOF
<Button1> focus
Meta+<Button1> move
Meta+<Button3> resize
Meta+Shift+<Button3> resize_centered
Meta+Shift+Return terminal
Meta+p menu
Meta+Shift+q quit
Meta+q restart
Meta+<Space> cycle_layout
Meta+Shift+\ flip_layout
Meta+Shift+<Space> stack_reset
Meta+j focus_next
Meta+k focus_prev
Meta+u focus_urgent
Meta+b bar_toggle
Meta+Shift+b bar_toggle_ws
Meta+x wind_del
Meta+Shift+x wind_kill
Meta+<1-9,0,F1-F12> ws_<1-22>
Meta+t float_toggle
Meta+Shift+<Delete> lock
Meta+Shift+i initscr
EOF
