#!/bin/bash

cd /var/www/snorby
bundle exec rails server -e production &
ruby script/delayed_job start RAILS_ENV=production &

