#!/bin/bash

MINIKUBE=$(which minikube)

if [[ $MINIKUBE == '' ]]; then
    echo 'Install minikube ...'

    curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube
    sudo install minikube /usr/local/bin

else
    echo "MINIKUBE was installed $MINIKUBE"
    $MINIKUBE version

fi;