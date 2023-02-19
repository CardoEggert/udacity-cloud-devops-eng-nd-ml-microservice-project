#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=mreggert96/udacity-project-submission .

# List docker images
docker image ls

# Run flask app (putting port 8000 here because of make_prediction.sh port)
docker run -p 8000:80 mreggert96/udacity-project-submission