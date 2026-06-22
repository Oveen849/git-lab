#!/bin/bash

echo "=========================================="
echo "Stopping application services..."
echo "=========================================="

# Stop both running containers gracefully
docker stop app_web app_db

echo "=========================================="
echo "Stopping app complete. Data is preserved."
echo "=========================================="
