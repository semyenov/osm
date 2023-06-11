#!/bin/bash

docker run \
  -it --rm \
  -p 8888:8888 \
  -v $(pwd)/out:/tilesets \
  consbio/mbtileserver \
    --enable-fs-watch \
    --port 8888 \
    --root-url /tiles # --verbose --tiles-only

