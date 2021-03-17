#!/bin/bash

CONFPATH=/root/.config/nuxhash
mkdir -p $CONFPATH

cp /benchmarks.json /root/.config/nuxhash/
cp /settings.conf /root/.config/nuxhash/
sed -i "s/TheMiner/$HOSTNAME/g" /root/.config/nuxhash/settings.conf