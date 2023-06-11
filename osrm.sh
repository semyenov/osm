#!/bin/bash

docker run -t -v "${PWD}/data:/data" ghcr.io/project-osrm/osrm-backend osrm-extract -p /opt/car.lua /data/russia-latest.osm.pbf
docker run -t -v "${PWD}/data:/data" ghcr.io/project-osrm/osrm-backend osrm-partition /data/russia-latest.osrm
docker run -t -v "${PWD}/data:/data" ghcr.io/project-osrm/osrm-backend osrm-customize /data/russia-latest.osrm
docker run -t -i -p 5000:5000 -v "${PWD}/data:/data" ghcr.io/project-osrm/osrm-backend osrm-routed --algorithm mld /data/russia-latest.osrm

docker run -p 9966:9966 osrm/osrm-frontend
xdg-open 'http://127.0.0.1:9966'

