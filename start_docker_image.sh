#!/bin/sh

IMAGE_TAG=donkey_car_project
docker run --rm -it \
   --env="DISPLAY" \
   --workdir=/projects \
   --volume="$PWD":/projects/little_cart_project \
   ${IMAGE_TAG} \
   /bin/zsh
