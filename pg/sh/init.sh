#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR/..
set -ex

NAME=ipg
REGION=hkg
flyctl launch --name $NAME --region $REGION --no-deploy --remote-only
flyctl volumes create data --no-encryption --region $REGION
flyctl ips allocate-v4
flyctl ips allocate-v6
