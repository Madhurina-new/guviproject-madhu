
#!/bin/bash

# Variables
IMAGE_NAME="my-nodejs-app"
TAG="latest"
CONTAINER_NAME="guviproject-madhu-web-1"
PORT="80" # Change if needed (e.g., 8080)

echo "🚀 Deploying $IMAGE_NAME:$TAG to server..."

# Stop and remove any existing container
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

# Run the container
docker run -d --name $CONTAINER_NAME -p $PORT:80 $IMAGE_NAME:$TAG

if [ $? -eq 0 ]; then
    echo "✅ Deployment successful! App running on port $PORT"
else
    echo "❌ Deployment failed!"
    exit 1
fi

