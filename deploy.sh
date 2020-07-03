#!/bin/sh
#install git
apt-get install git
#clone application
git clone -b monolith https://github.com/express42/reddit.git
#install bundle
cd reddit && bundle install
# start server puma
puma -d
# check work server and listening port
ps aux | grep puma