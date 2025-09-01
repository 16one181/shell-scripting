#!/bin/bash


code_clone() {
    echo "Code Cloning"
    git clone "repo"
}

install_dependencies() {
    echo "installing...."
    sudo apt-get install docker.io nginx -y
}

restart_dependencies() {
    sudo chown $USER /var/run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo systemctl restart docker
}

deploy() {
    docker build -t notes-app .
    docker run -d -p 8000:8000 notes-app:latest
}

echo "*****************DEPLOYMENT STARTS************"

if ! code_clone; then
    echo "***CODE ALREADY EXISTS***"
    cd django-notes-app
fi
if ! install_dependencies; then
    echo "***Installation Failed***"
    exit 1
fi
if ! restart_dependencies; then
    echo "***SYSTEM FAULT***"
    exit 1
fi 
deploy

echo "*****************DEPLOYMENT DONE************"
