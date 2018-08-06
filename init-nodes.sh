#!/bin/sh

cd "$(dirname "$0")"

geth init genesis.json --datadir=miner-node
geth init genesis.json --datadir=full-node
