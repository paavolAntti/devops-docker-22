#!/usr/bin/env bash
REPO=$1
#Split the repository name with "/"
readarray -d "/" -t REPO_ARR <<< "$REPO"
REPO_NAME=${REPO_ARR[-1]}
#Take the image name from the reponame
IMAGE_NAME=${REPO_NAME::-5}
echo "$IMAGE_NAME"
# Clone a repository given as argument
git clone $REPO
# Build the repo Dockerfile
docker build -t $IMAGE_NAME ./$IMAGE_NAME/
# Tag the image for dockerhub
docker tag $IMAGE_NAME hikiantti/$IMAGE_NAME
# Push it to dockerhub
docker push hikiantti/$IMAGE_NAME

