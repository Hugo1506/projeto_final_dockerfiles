#!/bin/bash

sudo docker run -it \
 --network sim \
  -p 0.0.0.0:3306:3306 \
  -p 0.0.0.0:3000:3000 \
  -p 0.0.0.0:3001:3001 \
  -v simulation_data:/simulation_data \
  -v mysql_data:/var/lib/mysql \
  --name webserver \
  webserver_image
