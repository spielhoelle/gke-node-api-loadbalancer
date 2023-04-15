#!/bin/bash
docker build --progress=plain -t node-api .
docker tag node-api gcr.io/robotic-jet-318515/node-app:0.0.1
docker push gcr.io/robotic-jet-318515/node-app:0.0.1
