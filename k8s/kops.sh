#!/bin/bash

KOPS=$(which kops)

if [[ $KOPS == '' ]]; then
    echo 'Install KOPS ...'

    curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
    curl -LO  https://github.com/kubernetes/kops/releases/download/1.15.0/kops-linux-amd64
    chmod +x kops-linux-amd64
    sudo mv kops-linux-amd64 /usr/local/bin/kops

else
    echo "KOPS was installed $KOPS"
    $KOPS version

fi;