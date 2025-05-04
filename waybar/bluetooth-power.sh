#!/bin/bash

STATUS=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [ "$STATUS" == "no" ]; then
	bluetoothctl power on
elif [ "$STATUS" == "yes" ]; then
	bluetoothctl power off
fi
