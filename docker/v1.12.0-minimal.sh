#!/bin/sh -xe

sh -c 'sudo docker login -u openmodelica -p=`cat ~/.docker/openmodelica.password`'
sudo docker build -t openmodelica/openmodelica:v1.12.0-minimal - < Dockerfile.v1.12.0-minimal
sudo docker push openmodelica/openmodelica:v1.12.0-minimal
