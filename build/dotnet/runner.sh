#!/bin/bash

file=/registered

if [ ! -f $file ]; then
    touch $file
    gitlab-runner register -n
fi

/usr/bin/dumb-init /entrypoint run --user=gitlab-runner --working-directory=/home/gitlab-runner