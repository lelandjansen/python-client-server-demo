#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build \
  --tag secure-file-system-server:latest . \
  --file $DIR/Dockerfile
