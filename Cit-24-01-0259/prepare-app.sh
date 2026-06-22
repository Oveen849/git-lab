#!/bin/bash

echo "=========================================="
echo "Preparing application infrastructure..."
echo "=========================================="

# 1. Create a custom isolated Docker network
echo "Creating Docker network: app_network..."
docker network create app_network

# 2. Create a named persistent volume for the database state
echo "Creating named persistent volume: redis_data..."
docker volume create redis_data

echo "=========================================="
echo "Infrastructure preparation complete!"
echo "=========================================="
