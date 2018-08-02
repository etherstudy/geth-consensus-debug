#!/bin/sh

PROJ_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

cd $GOPATH/src/github.com/ethereum/go-ethereum/cmd/geth
dlv debug -- --datadir=$PROJ_PATH/miner-node --networkid=1234
