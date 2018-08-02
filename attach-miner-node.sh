#!/bin/sh

PROJ_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

geth attach $PROJ_PATH/miner-node/geth.ipc
