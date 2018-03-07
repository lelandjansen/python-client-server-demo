#!/usr/bin/env bash
docker run \
  --detach \
  --publish 5000:5000 \
  secure-file-system-server
