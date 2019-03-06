#!/bin/sh

/bin/wget -O- 'https://raw.githubusercontent.com/vokins/yhosts/master/hosts.txt' | awk '$1 == "127.0.0.1" && $2 != "localhost"  { print "address=/"$2"/0.0.0.0"}' > /root/dnsmasq.d/ad_block.conf