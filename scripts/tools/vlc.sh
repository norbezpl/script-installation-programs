#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' vlc 2>&1)" = installed ]; then
  echo 'VLC is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y vlc