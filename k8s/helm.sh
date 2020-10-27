#!/bin/bash

HELM=$(which helm)

if [[ $HELM == '' ]]; then
    echo 'Install HELM ...'

    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh

else
    echo "HELM was installed $HELM"
    $HELM version

fi;