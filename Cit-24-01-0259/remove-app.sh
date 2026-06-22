#!/bin/bash

echo "=========================================="
echo "Removing all application resources..."
echo "=========================================="

# 1. Forcefully stop and remove the containers
echo "Removing containers..."
docker rm -f app_web app_db

# 2. Delete the custom network
echo "Removing network..."
docker network rm app_network

# 3. Delete the persistent volume (wipes the database state)
echo "Removing persistent data volume..."
docker volume rm redis_data

echo "=========================================="
echo "Removed app completely."
echo "=========================================="
