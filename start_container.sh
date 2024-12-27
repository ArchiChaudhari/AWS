#!/bin/bash
# Start Docker containers
set -e

IMAGE1="tex-odoo-dev-image:latest"
IMAGE2="tex-odoo-uat-image:latest"

tex-odoo-dev-container="container1"
tex-odoo-uat-container="container2"

echo "Starting Docker containers..."
docker run -d --name $tex-odoo-dev-server -p 8080:80 $IMAGE1
docker run -d --name $tex-odoo-uat-server -p 8081:80 $IMAGE2
echo "Docker containers started successfully."
