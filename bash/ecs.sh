#!/bin/bash

check_docker_installed() {
    if [ -x "$(command -v docker)" ]; then
        return 0
    else
        return 1
    fi
}

install_docker() {
    echo "Docker is not installed. Installing Docker..."
    apt update
    apt install -y docker.io
#    systemctl enable docker
#    systemctl start docker
    echo "Docker has been installed successfully."
}

if check_docker_installed; then
    echo "Docker is already installed."
else
    install_docker
fi