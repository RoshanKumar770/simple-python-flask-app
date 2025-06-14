#!/bin/bash
set -e

# Stop any container running your image
CONTAINER_ID=$(sudo docker ps -q --filter ancestor=rauw/simple-python-flask-app:latest)
if [ -n "$CONTAINER_ID" ]; then
  sudo docker stop $CONTAINER_ID
fi