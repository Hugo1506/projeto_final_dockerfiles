#!/bin/bash

sudo docker run -it \
  -p 8000:8000 \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --device /dev/dri:/dev/dri \
  -v simulation_data:/simulation_data \
  simulation_image
