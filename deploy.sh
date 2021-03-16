#!/bin/bash
echo "PULL IMAGE FROM REGISTRY"
docker login -u manhnh1995 -p $PASSWORD
docker pull manhnh1995/nodejs:$IMAGE-$BUILD_NUMBER
docker run -d -p 3000:3000 -e APP_VERSION=$IMAGE -e APP_ENV=$BUILD_NUMBER manhnh1995/nodejs:$IMAGE-$BUILD_NUMBER
