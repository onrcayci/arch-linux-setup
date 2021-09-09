#!/usr/bin/env python
import os
import subprocess


def connect_to_wifi():
    result = subprocess.call(args=["ping", "-n", "1", "google.com"])
    # if result is 1, this means that there is no connection
    if result:
        print(result)


def install():
    # sync time
    subprocess.call(args=["timedatectl", "set-ntp", "true"])


if __name__ == "__main__":
    # install()
    connect_to_wifi()