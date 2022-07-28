
[![ojoimmanuel](https://circleci.com/gh/ojoimmanuel/DevOps_ml_Microservices_kubernetes_Project4.svg?style=svg)](https://github.com/ojoimmanuel/DevOps_ml_Microservices_kubernetes_Project4/)

## Project Overview

This project is about building a flask application prediction app that uses a  pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More information on the data, which was initially taken from Kaggle, can be sourced on [the data source site](https://www.kaggle.com/c/boston-housing). 

### Project Tasks

The project goal is to operationalize machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. The following tasks are carried out:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested


## Files Description

* `.circleci/config.yml` is a script that runs the workflow pipeline
* `model_data/housing.csv` has the data for prediction
* `output_txt_files` contains output logs from the running app 
* `app.py` a python application for prediction
* `Dockerfile` this activates docker to create a container and run commands and app
* `requirements.txt` contains a list of dependencies to install

# Instructions

## Clone the project

Run `git clone https://github.com/ojoimmanuel/DevOps_ml_Microservices_kubernetes_Project4`
alternatively, download a zip file of the repository

## Setup the Environment

* Install Python 3.7
* Run `python3 -m pip install --user virtualenv`
* Run `brew install hadolint` to install hadolint
* Run `brew install virtualbox --cask` to install virtualbox
* Run `brew install minikube` to install minikube
* cd into project folder and run `make setup` to create and activate a virtual environment 
* Run `make setup` to install the necessary dependencies
* Run `make lint` to ensure the code is fine

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh` and make predictions `./make_prediction.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Run `minicube start` to start a cluster
* Run `./run_kubernetes`. You may have to run it a second time after pod is created and running
* Run `./make_prediction.sh` to make a prediction

## Clean up
* Run `minicube delete` to delete stack
