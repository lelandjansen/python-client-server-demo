#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build \
  --tag secure-file-system-client:latest . \
  --file $DIR/Dockerfile
