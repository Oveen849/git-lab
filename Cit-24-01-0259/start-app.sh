#!/bin/bash

echo "=========================================="
echo "Starting Application Services..."
echo "=========================================="

# 1. Start the Redis Database Container
echo "Launching Database (Redis)..."
docker run -d \
  --name app_db \
  --network app_network \
  --restart on-failure \
  -v redis_data:/data \
  redis:alpine

# 2. Start the Nginx Web Server Container
echo "Launching Web Server (Nginx)..."
docker run -d \
  --name app_web \
  --network app_network \
  --restart on-failure \
  -p 8080:80 \
  nginx:alpine

echo "=========================================="
echo "The app is available at http://localhost:8080"
echo "=========================================="
