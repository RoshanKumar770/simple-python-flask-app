#!/bin/bash
set -e

docker pull rauw/simple-python-flask-app:latest
docker run -d -p 5000:5000 --name flask-app rauw/simple-python-flask-app:latest