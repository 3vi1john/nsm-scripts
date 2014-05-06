#!/bin/bash 
ps aux | grep "[s]nort -D"
if [ $? -ne "0" ];
then
  /etc/start-snort.sh
else
echo "Snort is running. I will check back in 1 min..."
fi

ps aux | grep "[b]arnyard2 -c"
if [ $? -ne "0" ];
then
  /etc/start-snort.sh
else
  echo "Barnyard2 is running. I will check back in 1 min..."
fi
