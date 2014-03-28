#!/bin/bash

/sbin/ifconfig eth1 0.0.0.0 up promisc

/usr/bin/killall -9 snort
/usr/bin/killall -9 barnyard2

/bin/rm -r /var/run/snort1
/bin/rm -r /var/run/snort2
/bin/rm -r /var/run/snort3
/bin/rm -r /var/run/snort4

/bin/mkdir /var/run/snort1 
/bin/mkdir /var/run/snort2
/bin/mkdir /var/run/snort3
/bin/mkdir /var/run/snort4

/usr/local/snort/bin/snort --pid-path /var/run/snort1 --create-pidfile -D -u snort -g snort -c /usr/local/snort/etc/snort-1.conf -i eth1
/usr/local/bin/barnyard2 --pid-path /var/run/snort1 --create-pidfile -c /usr/local/snort/etc/barnyard2-1.conf -d /var/log/snort -f snort-1.u2 -w /var/log/snort/barnyard2-1.waldo -D


/usr/local/snort/bin/snort --pid-path /var/run/snort2 --create-pidfile -D -u snort -g snort -c /usr/local/snort/etc/snort-2.conf -i eth1
/usr/local/bin/barnyard2 --pid-path /var/run/snort2 --create-pidfile  -c /usr/local/snort/etc/barnyard2-2.conf -d /var/log/snort -f snort-2.u2 -w /var/log/snort/barnyard2-2.waldo -D

/usr/local/snort/bin/snort --pid-path /var/run/snort3 --create-pidfile -D -u snort -g snort -c /usr/local/snort/etc/snort-3.conf -i eth1
/usr/local/bin/barnyard2 --pid-path /var/run/snort3 --create-pidfile   -c /usr/local/snort/etc/barnyard2-3.conf -d /var/log/snort -f snort-3.u2 -w /var/log/snort/barnyard2-3.waldo -D

/usr/local/snort/bin/snort --pid-path /var/run/snort4 --create-pidfile -D -u snort -g snort -c /usr/local/snort/etc/snort-4.conf -i eth1
/usr/local/bin/barnyard2 --pid-path /var/run/snort4 --create-pidfile -c /usr/local/snort/etc/barnyard2-4.conf -d /var/log/snort -f snort-4.u2 -w /var/log/snort/barnyard2-4.waldo -D
