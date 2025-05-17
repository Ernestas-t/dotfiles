public_ip=$(curl -s ifconfig.me)
if [[ $public_ip != 192.168.* && $public_ip != 10.* && $public_ip != 172.16.* ]]; then
    echo "VPN: Connected"
else
    echo "VPN: Disconnected"
fi
