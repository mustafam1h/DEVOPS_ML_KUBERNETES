
## Repository Overview
![Image description](
https://circleci.com/gh/mustafam1h/DEVOPS_ML_KUBERNETES/tree/master.svg?style=svg)


This repository contains code to containerize a machine learning, Python application; it uses a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle,
 on [the data source site](https://www.kaggle.com/c/boston-housing). 

`app.py` serves out predictions about housing prices through API calls. This code could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Instructions for running the app using Docker or Kubernetes can be found below.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Pushing the docker image can be done using `./upload_docker.sh` with reference to docker hub user/id
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. A test scenario to make prediction can be done using `./make_prediction.sh`

### Kubernetes-Specific Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create a Flask app in a Container
* Run via kubectl 
* You can run one cluster locally with [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)