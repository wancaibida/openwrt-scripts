#!/bin/sh

/usr/bin/curl -o /root/dnsmasq.d/accelerated-domains.china.conf https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf

sed -i -e 's/114.114.114.114/221.6.4.66/g' /root/dnsmasq.d/accelerated-domains.china.conf

/usr/bin/curl -o /root/dnsmasq.d/dnsmasq_gfwlist.conf https://cokebar.github.io/gfwlist2dnsmasq/dnsmasq_gfwlist.conf
