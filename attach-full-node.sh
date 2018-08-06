#!/bin/sh

PROJ_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

geth attach $PROJ_PATH/full-node/geth.ipc
