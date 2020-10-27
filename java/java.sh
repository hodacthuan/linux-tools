#!/bin/bash

JAVA=$(which java)

if [[ $JAVA == '' ]]; then
    echo 'Install JAVA ...'
    sudo apt install -y default-jre
    sudo apt install -y default-jdk

else
    echo "JAVA was installed $JAVA"
    $JAVA -version

fi;