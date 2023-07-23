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
    sudo apt update
    sudo apt install -y docker.io
    sudo systemctl enable docker
    sudo systemctl start docker
    echo "Docker has been installed successfully."
}


if check_docker_installed; then
    echo "Docker is already installed."
else
    install_docker
fi