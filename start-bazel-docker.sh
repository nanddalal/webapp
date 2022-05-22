#!/bin/bash

set -ex

docker build . -f Dockerfile -t nanddalal/webapp:latest

USER_UID=`id -u ${USER}`
BUILD_OPTS=""
BUILD_OPTS+=" --build-arg HOST_USER=${USER}"
BUILD_OPTS+=" --build-arg HOST_UID=${USER_UID}"

docker build . -f Dockerfile_user -t nanddalal/webapp_user:latest ${BUILD_OPTS}

docker run \
    -v $(pwd):/code \
    -v $HOME/.cache:$HOME/.cache \
    -w /code \
    --detach-keys="ctrl-@" \
    -it \
    nanddalal/webapp_user:latest \
    bash
