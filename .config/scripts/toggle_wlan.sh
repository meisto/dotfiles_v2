#!/bin/dash
if test "blocked" = "$(rfkill --raw | grep wlan | cut -d' ' -f4)"; then rfkill unblock wlan; else rfkill block wlan; fi;
