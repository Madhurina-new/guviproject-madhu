
#!/bin/bash

# Variables
IMAGE_NAME="my-nodejs-app"
TAG="latest"

echo "🚀 Building Docker Image: $IMAGE_NAME:$TAG..."

# Navigate to project root (if needed)
cd "$(dirname "$0")"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

if [ $? -eq 0 ]; then
    echo "✅ Build successful: $IMAGE_NAME:$TAG"
else
    echo "❌ Build failed!"
    exit 1
fi
