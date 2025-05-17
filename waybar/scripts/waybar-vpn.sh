#!/bin/bash

# Default status
VPN_STATUS="Off"

# Check for OpenVPN
if pgrep openvpn > /dev/null; then
    VPN_STATUS="On: OpenVPN"
fi

# Check for ProtonVPN WireGuard connection
PROTON_CONNECTION=$(nmcli -t connection show --active | grep "ProtonVPN" | grep "wireguard")
if [ -n "$PROTON_CONNECTION" ]; then
    # Get the full ProtonVPN connection name
    PROTON_SERVER=$(nmcli connection show --active | grep "ProtonVPN" | grep "wireguard" | awk '{print $1" "$2}')
    VPN_STATUS="VPN: $PROTON_SERVER"
fi

if [ "$VPN_STATUS" = "Off" ]; then
    echo "VPN: Off"
else
    echo "$VPN_STATUS"
fi
