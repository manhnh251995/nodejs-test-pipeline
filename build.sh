#!/bin/bash
echo "Build Docker NEW IMAGE"
docker build -t nodejs:$IMAGE-$BUILD_NUMBER .


