#!/bin/bash
# Stop and remove Docker containers
set -e

tex-udoo-dev-container="container1"
tex-udoo-uat-container="container2"

echo "Stopping and removing Docker containers..."
docker stop $tex-udoo-dev-container || true
docker rm $tex-udoo-dev-container || true
docker stop $tex-udoo-uat-container || true
docker rm $tex-udoo-uat-container || true
echo "Docker containers stopped and removed."
