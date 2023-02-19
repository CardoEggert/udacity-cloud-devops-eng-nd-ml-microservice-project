# udacity-cloud-devops-eng-nd-ml-microservice-project
[![CardoEggert](https://circleci.com/gh/CardoEggert/udacity-cloud-devops-eng-nd-ml-microservice-project.svg?style=svg)](https://app.circleci.com/pipelines/github/CardoEggert/udacity-cloud-devops-eng-nd-ml-microservice-project?branch=main)

# Summary
This project is for the Udacity Cloud Devops Engineer nanodegree course. It is meant for the 4th project of the course "Operationalize a Machine Learning Microservice API". This project contains a flask app that can make predictions based on Boston housing prices. The goal of this project is to learn how to use docker and kubernetes by trying to containerize the flask app.

# Files
* output_txt_files/ - Project related files that are needed for the submission
* model_data/ - Model data that the flask app uses for making predictions
* app.py - Flask app
* make_prediction.sh - bash script for making a call towards the flask app 
* Dockerfile - file used for creating docker image
* run_docker.sh - bash script for running a docker container
* upload_docker.sh - bash script for uploading the docker image to the docker repository
* run_kubernetes.sh - bash script for running the docker image in Kubernetes

# Instructions
**NB! Some python versions might have issues when trying to install the requirements. I recommend to use python 3.7. For getting that version on my machine I used [Anaconda](https://www.anaconda.com/products/distribution).**

## Running the app locally
```
make setup
make install
python app.py
```
The app.py uses port 80 so you should see the app from your browser by going to http://localhost .

## Running the app using docker
```
./run_docker.sh
```
Make sure the bash script is executable. If not then 
```
chmod +x ./run_docker.sh
```

## Uploading the built image from run_docker.sh to docker repository
```
./upload_docker.sh
```
File has to be executable, if not then follow similar step as before.

## Running the image on kubernetes

```
./run_kubernetes.sh
```
Keep in mind that the image has to be present in docker repository and kubernetes cluster has to be active.