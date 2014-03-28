#!/bin/bash 

if [ $(pgrep "snort" | wc -l) -eq 1 ] > /dev/null
then  
     echo "snort is alive."

else
     echo "one or more snort processes are dead, trying restart..."
     /etc/start-snort.sh
fi

if [ $(pgrep "barnyard2" | wc -l) -eq 1 ] > /dev/null
then  
     echo "barnyard is alive."

else
     echo "one or more barnyard processes are dead, trying restart..."
     /etc/start-snort.sh
fi

if [ $(pgrep "bro" | wc -l) -eq 2 ] > /dev/null
then  
     echo "bro is alive."

else
     echo "one or more bro processes are dead, trying restart..."
     /etc/start-bro.sh
fi
