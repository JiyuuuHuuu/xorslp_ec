#!/bin/bash

IMAGE_NAME=xorslp_ec

build_container() {
  cd .devcontainer
  docker build . -f Dockerfile -t $IMAGE_NAME
  cd ..
}

if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
  build_container
fi

docker run -it -d --name xorslp -v $(pwd):/home/xorslp_ec $IMAGE_NAME