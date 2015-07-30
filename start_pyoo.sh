#!/bin/bash

CONTAINER_IMAGE=pyoo
CONTAINER_NAME=pyoo

echo "Starting container..."
echo ""

docker run -ti --rm --name $CONTAINER_NAME \
    -v `pwd`/output:/output \
    -w "/output" \
    $CONTAINER_IMAGE 

