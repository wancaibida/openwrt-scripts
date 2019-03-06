#!/bin/ash

list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`
if [ -z "`grep "bt-tracker" /var/etc/aria2/aria2.conf.main`" ]; then
    sed -i '$a bt-tracker='${list} /var/etc/aria2/aria2.conf.main
    echo add......
else
    sed -i "s@bt-tracker.*@bt-tracker=$list@g" /var/etc/aria2/aria2.conf.main
    echo update......
fi

/etc/init.d/aria2 restart
