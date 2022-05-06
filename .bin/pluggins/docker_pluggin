#! /bin/bash

if [[ $(command -v docker) ]]; then
    numDocker=$(($(docker ps | wc -l)-1))
else
    exit 1
fi

if [[ $numDocker -gt 0 ]]; then
    echo $numDocker | awk '{print " dockers: "$0" "}'
fi
