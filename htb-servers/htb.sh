#!/bin/bash

clear
echo "Protocol: UDP 1337                             6.09.2026"
echo "========================================================"
echo "  _  _ _____ ____    ____  _____ ______   _____ ____   "
echo " | || |_   _|  _ \  / ___|| ____|  _ \ \ / / ____|  _ \  "
echo " | || | | | | |_) | \___ \|  _| | |_) \ V /|  _| | |_) | "
echo " | || | | | |  _ <   ___) | |___|  _ < | | | |___|  _ <  "
echo " |_||_| |_| |_| \_\ |____/|_____|_| \_\|_| |_____|_| \_\\"
echo "                   S E L E C T O R                      "
echo "========================================================"
echo ""

echo "Select the HTB VPN server:"
echo ""
echo "  [1] EU - Free 1       [6] US - Free 1"
echo "  [2] EU - Free 2       [7] US - Free 2"
echo "  [3] EU - Free 3       [8] US - Free 3"
echo "  [4] EU - Free 4       [9] US - Free 4"
echo "  [5] EU - Free 5      [10] US - Free 5"
echo "                [11] Exit"

read -p "Enter choice [1-9]: " choice

case $choice in
    1)
        sudo openvpn "servers/machines_eu-1.ovpn"
        ;;
    2)
        sudo openvpn "servers/machines_eu-2.ovpn"
        ;;
    3)
        sudo openvpn "servers/machines_eu-3.ovpn"
        ;;
    4)
        sudo openvpn "servers/machines_eu-4.ovpn"
        ;;
    5)
        sudo openvpn "servers/machines_eu-5.ovpn"
        ;;
    6)
        sudo openvpn "servers/machines_us-1.ovpn"
        ;;
    7)
        sudo openvpn "servers/machines_us-2.ovpn"
        ;;
    8)
        sudo openvpn "servers/machines_us-3.ovpn"
        ;;
    9)
        sudo openvpn "servers/machines_us-4.ovpn"
        ;;
    10)
        sudo openvpn "servers/machines_us-5.ovpn"
        ;;
    11)
        exit 0
        ;;
    *)
        echo "Invalid selection."
        exit 1
        ;;
esac