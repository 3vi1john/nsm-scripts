#!/bin/bash

rm -r /var/www/snorby/tmp/pids/server.pid
killall -9 ruby1.9.1
cd /var/www/snorby
bundle exec rails server -e production &
ruby script/delayed_job start RAILS_ENV=production &

