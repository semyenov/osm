#!/bin/bash

./tilemaker \
	--config ./config-openmaptiles.json \
	--process ./process-openmaptiles.lua \
	--input ./data/russia-latest.osm.pbf \
  --output ./out/tiles.mbtiles
