# Minikube Full Stack

## Introduction

This repository is forked from a repo `https://github.com/danielstern/express-react-fullstack` that originally contained just a simple Full Stack Express / React application.

In this repository, the application has been containerised using docker. K8s deployment files are 
present to allow the application to be deployed using Minikube.
The purpose of doing this was to learn more about containerisation and how kubernetes functions on a small and simple scale.
 

## Installation
First, install the programs required to run the application in minikube:

- [Node.js](https://nodejs.org/en/download/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Docker](https://docs.docker.com/get-docker/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)

Next, clone this repository and install dependencies:

```
git clone https://github.com/ogcamplin/minikube-fullstack.git
```

```
npm install
```

## Running

Ensure that all required services are running (minikube and docker):

```
sudo service docker start
```

```
minikube start
```

Next, deploy the app to the K8s cluster:

```
kubectl apply -f k8s/server-deployment.yaml
```

Now get the URL for the service:

```
minikube service minikube-fullstack-server-service
```

Use the URL that this command outputs to navigate to the web application!


