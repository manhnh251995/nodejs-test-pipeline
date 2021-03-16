#!/bin/bash
echo "PUSH IMAGE TO REGISTRY"
docker login -u manhnh -p $PASSWORD
docker tag nodejs:$IMAGE-$BUILD_NUMBER manhnh1995/nodejs:$IMAGE-$BUILD_NUMBER
docker push manhnh1995/nodejs:$IMAGE-$BUILD_NUMBER
