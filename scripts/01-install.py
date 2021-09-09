#!/usr/bin/env python
import subprocess
from urllib import request, error


def connect_to_wifi():
    # try to check if the internet connection is good
    try:
        response = request.urlopen("https://google.com")
    # no internet connection
    except error.URLError:
        # coonect to the internet here
        wifi_list = subprocess.run(["iwctl", "device", "list"], stdout=subprocess.PIPE)
        print(wifi_list)


def install():
    # sync time
    subprocess.call(args=["timedatectl", "set-ntp", "true"])


if __name__ == "__main__":
    # install()
    connect_to_wifi()