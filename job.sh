#!/bin/sh

## update dnsmasq dns no proxy
/root/scripts/update_dnsmasq_gfwlist.sh

## update dnsmasq ad block
/root/scripts/update_dnsmasq_adblock.sh

## /etc/init.d/dnsmasq restart

## update chnroute
/root/scripts/update_chnroute_txt.sh

## update aria2 tracker 
#/root/scripts/update_aria2_tracker.sh