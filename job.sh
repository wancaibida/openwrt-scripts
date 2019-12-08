#!/bin/sh

## update dnsmasq dns no proxy
/root/scripts/update_dnsmasq.sh

/etc/init.d/dnsmasq restart

## update chnroute for iptables
## /root/scripts/update_china_ip_list.sh

## update aria2 tracker 
## /root/scripts/update_aria2_tracker.sh