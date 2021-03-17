#!/bin/bash

CONFPATH=/root/.config/nuxhash
mkdir -p $CONFPATH

cp /benchmarks.json /root/.config/nuxhash/
cp /settings.conf /root/.config/nuxhash/
sed -i "s/TheMiner/$HOSTNAME/g" /root/.config/nuxhash/settings.conf
nuxhashd &; disown

mkdir -p /var/www
cd /var/www
cp /img.jpg .
cp /index.html .
python3 -m http.server 8888
