#!/bin/bash

sudo docker run -it \
  -p 3306:3306 \
  -p 3000:3000 \
  -p 3001:3001 \
  -v simulation_data:/simulation_data \
  -v mysql_data:/var/lib/mysql \
  --restart always \
  webserver_image
