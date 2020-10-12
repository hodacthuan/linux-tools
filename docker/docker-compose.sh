#!/bin/bash

DOCKER_COMPOSE=$(which docker-compose)

if [[ $DOCKER_COMPOSE == '' ]]; then 
    echo 'Install docker-compose ...'

    # can use this link instead:  https://github.com/hodacthuan/docker-compose/raw/master/docker-compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

    sudo chmod +x /usr/local/bin/docker-compose

    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

    #should be version 1.23.1
    docker-compose version

else
    echo "Docker-compose was installed $DOCKER_COMPOSE"
    $DOCKER_COMPOSE version

fi;