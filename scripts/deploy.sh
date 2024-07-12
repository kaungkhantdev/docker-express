#!/bin/bash

# Stop and remove the existing container
docker stop expressdocker || true
docker rm expressdocker || true

# Login to ECR
$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)

# Pull the latest Docker image from ECR
docker pull $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/expressdocker:latest

# Run the Docker container
docker run -d -p 80:3000 --name expressdocker $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/expressdocker:latest