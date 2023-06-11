#!/bin/bash

aria2c \
  -x 16 \
  -s 16 \
  -d ./data \
  https://download.geofabrik.de/russia-latest.osm.pbf  
