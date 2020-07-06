#!/bin/sh

apt-get update
apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
cat reddit.service > /etc/systemd/system/reddit.service
systemctl enable reddit.service
systemctl start reddit.service
