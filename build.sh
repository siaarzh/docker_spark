#!/bin/sh
set -ex

# docker hub username
USERNAME=siaarzh
# image name
IMAGE=docker_spark

docker build -t $USERNAME/$IMAGE:latest .