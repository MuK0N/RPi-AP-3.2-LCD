#!/bin/bash

apt-get install -y hostapd dnsmasq iptables-persistent
vi /etc/hostapd/hostapd.conf
vi /etc/default/hostapd

vi /etc/dhcpcd.conf
vi /etc/dnsmasq.conf
vi /etc/sysctl.conf
vi /etc/dnsmasq.conf

sudo iptables -t nat -A  POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i wlan0 -o eth0 -j ACCEPT
sudo apt-get install iptables-persistent
sudo vi /etc/hostapd/hostapd.conf