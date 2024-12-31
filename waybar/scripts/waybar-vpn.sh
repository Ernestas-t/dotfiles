#!/bin/bash

if pgrep openvpn > /dev/null; then
    echo "VPN: On"
else
    echo "VPN: Off"
fi
