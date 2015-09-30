#!/bin/bash

sudo apt-get update
sudo apt-get install tmux zsh tcpdump bridge-utils wicd-curses telnet isc-dhcp-server bind9 python-flask python-wicd

sudo sysctl -w net.ipv4.ip_forward=1

sudo iptables -t nat -A POSTROUTING -j MASQUERADE
sudo sh -c "iptables-save > /etc/network/iptables.ipv4.nat"
# Restore up iptables-restore < /etc/network/iptables.ipv4.nat
