#!/bin/bash
PORT=8080
echo "Building Docker image..."
docker build -t myapp:latest .
echo "Stopping old Container..."
docker stop myapp || true
docker rm myapp || true
echo "Running new Container on port $PORT..."
docker run -d --name myapp -p $PORT:8080 myapp:latest
echo "App deployed!"
echo "Use killrecos=da Traffic tab port $PORT"
