#!/bin/bash
#
# Runs Mermaid CLI using the LOCAL docker image 
#
# Copyright (c) 2020, Roozbeh Farahbod
#

DOCKER_IMAGE=mermaid:local

docker run \
    --rm \
    --net="none" \
    -v `pwd`:/data:z \
    -u `id -u` \
    ${DOCKER_IMAGE} -p /puppeteer-config.json "$@"
