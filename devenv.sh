#!/bin/sh

image_name=nvim-nocopy-paste-devenv

docker build -t $image_name .
docker run -it \
    -v $PWD/lua:/root/.config/nvim/lua:ro \
    -v $PWD/plugin:/root/.config/nvim/plugin:ro \
    $image_name /bin/sh
