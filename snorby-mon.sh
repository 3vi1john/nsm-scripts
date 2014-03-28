#!/bin/bash

process='delayed_job'

ps aux | grep $process | awk "{ print \$11 }" | grep $process > /dev/null
if [ $? -eq 0 ]
        then
                echo "$process is alive."
        else
                echo "$process is dead, trying restart of $process..."
                /etc/start-snorby.sh
fi

