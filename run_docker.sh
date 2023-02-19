#!/usr/bin/env bash

dockerimage=udacity-project-submission
# Build image and add a descriptive tag
docker build --tag=$dockerimage .

# List docker images
docker image ls

# Run flask app (putting port 8000 here because of make_prediction.sh port)
docker run -p 8000:80 $dockerimage