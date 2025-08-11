#!/bin/bash

sudo docker run -it \
  --network sim \
  -p 0.0.0.0:8000:8000 \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v simulation_data:/simulation_data \
  --name simulation \
  simulation_image
