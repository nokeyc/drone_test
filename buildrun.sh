#!/bin/sh
echo '================開始構建映象=============='
#映象名稱
IMAGE_NAME='springboot'
echo IMAGE_NAME=$IMAGE_NAME

echo '================構建映象開始================'
docker stop $IMAGE_NAME
docker rm $IMAGE_NAME
docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
echo '================構建映象結束================'

echo '================建立容器開始================'
docker run -p 8080:8080 -d --name $IMAGE_NAME $IMAGE_NAME
echo '================建立容器結束================'
