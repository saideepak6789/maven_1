#!/bin/bash

CONTAINER_NAME="java-web-app"

check_container_exists() {
    if [ "$(sudo docker ps -aq -f name=${CONTAINER_NAME})" ]; then
        return 0
    else
        return 1
    fi
}

stop_and_remove_container() {
    echo "Stopping and removing container: ${CONTAINER_NAME}"
    sudo docker stop ${CONTAINER_NAME}
    sudo docker rm ${CONTAINER_NAME}
    sudo docker rmi dishoneprabu/java-web-app:latest
    echo "Container has been stopped and removed successfully."
}

if check_container_exists; then
    stop_and_remove_container
else
    echo "Container ${CONTAINER_NAME} does not exist."
fi
