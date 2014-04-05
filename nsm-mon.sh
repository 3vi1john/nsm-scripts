#!/bin/bash 
!/bin/bash
sitepoint=`ps aux | grep -v grep | egrep -c 'snort|barnyard2|bro'`
if [ $sitepoint -lt "3" ]; then
  /etc/start-snort.sh
  /etc/start-bro.sh
else
  echo "Snort, barnyard2, and bro are running. I will check back in 1 min..."
fi
