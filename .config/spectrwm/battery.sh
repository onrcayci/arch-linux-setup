#!/usr/bin/env bash

get_battery_state() (
	line=$(upower -i $(upower -e | grep BAT) | grep 'state')
	echo ${line##*:}
)

battery_percentage() (
	line=$(upower -i $(upower -e | grep BAT) | grep 'percentage')
	echo ${line##*:}
)

battery_discharge_time() (
	line=$(upower -i $(upower -e | grep BAT) | grep 'time to empty')
	echo ${line##*:}
)

battery_charge_time() (
	line=$(upower -i $(upower -e | grep BAT) | grep 'time to full')
	echo ${line##*:}
)

battery_status() (
	if [[ $(get_battery_state) == 'discharging' ]]; then
		echo "$(battery_percentage) $(battery_discharge_time)"
	elif [[ $(get_battery_state) == 'charging' ]]; then
		echo "$(battery_percentage) | Fully charged in $(battery_charge_time)"
	fi
)

battery_status
