#!/bin/sh

## update dnsmasq dns no proxy
/root/scripts/update_dnsmasq_china.sh

## update dnsmasq ad block
/root/scripts/update_dnsmasq_adblock.sh

## /etc/init.d/dnsmasq restart

## update chnroute
/root/scripts/update_china_ip_list.sh

## update aria2 tracker 
#/root/scripts/update_aria2_tracker.sh