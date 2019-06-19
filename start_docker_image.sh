#!/bin/sh

IMAGE_TAG=donkey_car_project
docker run --rm -it \
   --env="DISPLAY" \
   --workdir=/app \
   --volume="$PWD":/app \
   ${IMAGE_TAG} \
   /bin/zsh
