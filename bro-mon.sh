#!/bin/bash
ps aux | grep [b]roctl
if [ $? -ne "0" ];
then
  /etc/start-bro.sh
else
  echo "Bro is running. I will check back in 1 min..."
fi
