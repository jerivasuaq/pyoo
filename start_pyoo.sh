#!/bin/bash

CONTAINER_IMAGE=pyoo_pyoo
CONTAINER_OPENOFFICE=pyoo_openoffice
CONTAINER_PYOO=pyoo_pyoo

echo ""
echo ""
echo ""
echo "make sure $CONTAINER_OPENOFFICE container is running"
echo ""
echo ""
echo ""
sleep 1

echo "docker run -ti --rm --name $CONTAINER_WEB --link $CONTAINER_OPENOFFICE:$CONTAINER_OPENOFFICE \
$CONTAINER_IMAGE "

