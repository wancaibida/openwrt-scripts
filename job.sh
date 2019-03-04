#!/bin/sh

## gfwlist
/root/scripts/update_dnsmasq_gfwlist.sh

## 定时更新广告过滤列表
/root/scripts/update_dnsmasq_adblock.sh

## /etc/init.d/dnsmasq restart

## 更新chnroute
/root/scripts/update_chnroute_txt.sh

## aria2 tracker更新
/root/scripts/trackers-list-aria2.sh