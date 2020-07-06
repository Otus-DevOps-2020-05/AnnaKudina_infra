#!/bin/sh
#install Ruby/Bundler
apt update
ps aux | grep -i apt
sleep 30
apt install -y ruby-full ruby-bundler build-essential
