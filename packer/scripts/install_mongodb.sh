#!/bin/sh
#add keys and repo mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
#install mongodb
apt-get update
apt install -y mongodb-org
#start mongod
systemctl start mongod
systemctl enable mongod
