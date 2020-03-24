#!/bin/bash

file=/registered

if [ ! -f $file ]; then
    touch $file
    gitlab-runner register -n -c /home/gitlab-runner/config.toml
fi

/usr/bin/dumb-init /entrypoint run --user=gitlab-runner --working-directory=/home/gitlab-runner