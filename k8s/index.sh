#!/bin/bash
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${CWD}

source ./kubenetes.sh
source ./helm.sh
source ./minikube.sh
source ./kops.sh