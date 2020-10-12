#!/bin/bash

REDIS=$(which redis-cli)

if [[ $REDIS == '' ]]; then
    echo 'Install REDIS-CLI ...'
    sudo apt-get install redis-tools -y

else
    echo "REDIS-CLI was installed $REDIS"
    $REDIS --version

fi;
