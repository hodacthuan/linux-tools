#!/bin/bash

KUBENETES=$(which kubeadm)

if [[ $KUBENETES == '' ]]; then
    echo 'Install Kubenetes ...'

    # Install etcd 2.0
    curl -L https://github.com/coreos/etcd/releases/download/v2.0.0/etcd-v2.0.0-linux-amd64.tar.gz -o etcd-v2.0.0-linux-amd64.tar.gz
    tar xzvf etcd-v2.0.0-linux-amd64.tar.gz
    cd etcd-v2.0.0-linux-amd64
    sudo mkdir /opt/bin
    sudo cp etcd* /opt/bin

    # Install Kubenetes
    sudo apt install curl -y
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
    sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
    sudo apt-get install -y kubelet kubeadm kubectl
    kubeadm version

else
    echo "KUBENETES was installed $KUBENETES"
    $KUBENETES version

fi;