#!/bin/bash
set -e

sudo docker pull rauw/simple-python-flask-app:latest
sudo docker run -d -p 5000:5000 rauw/simple-python-flask-app:latest