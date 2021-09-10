#!/usr/bin/env bash

connect_to_net() {
    # check for internet connection
    if ! ping -c 1 google.com 1>/dev/null 2>&1; then
        echo "No connection"
        echo $(iwctl device list)
    else
        echo "Connected to the internet"
    fi
}

connect_to_net