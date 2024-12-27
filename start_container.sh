#!/bin/bash
# Start Docker containers
set -e

IMAGE1="tex-odoo-dev-server-image:latest"
IMAGE2="tex-odoo-uat-server-image:latest"

CONTAINER1_NAME="container1"
CONTAINER2_NAME="container2"

echo "Starting Docker containers..."
docker run -d --name $tex-odoo-dev-server -p 8080:80 $IMAGE1
docker run -d --name $tex-odoo-uat-server -p 8081:80 $IMAGE2
echo "Docker containers started successfully."
