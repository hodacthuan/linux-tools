#!/bin/bash

AWS=$(which aws)

if [[ $AWS == '' ]]; then
    echo 'Install AWS-CLI ...'
    sudo apt-get install awscli -y

else
    echo "AWS-CLI was installed $AWS"
    $AWS --version

fi;