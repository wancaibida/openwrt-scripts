#!/bin/sh

## 定时更新广告过滤列表
/usr/bin/curl -o /root/dnsmasq.d/dnsmasq_gfwlist.conf https://cokebar.github.io/gfwlist2dnsmasq/dnsmasq_gfwlist.conf
/usr/bin/python3 /root/scripts/host_to_dnsmasq.py /root/dnsmasq.d/ad_block.conf

## /etc/init.d/dnsmasq restart

## 更新chnroute
/bin/wget -O- 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | awk -F\| '/CN\|ipv4/ { printf("%s/%d\n", $4, 32-log($5)/log(2)) }' > /root/scripts/chnroute.txt

## aria2 tracker更新
/root/scripts/trackers-list-aria2.sh