#!/bin/bash
#Crontab */1 * * * * root /etc/snorby-mon.sh

sitepoint=`ps aux | grep -v grep | egrep -c 'delayed_job'`
if [ $sitepoint -lt "1" ]; then
  /etc/start-snorby.sh
else
  echo "Snorby is running. I will check back in 1 min..."
fi


