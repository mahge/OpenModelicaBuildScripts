#!/bin/sh -xe

docker login docker.openmodelica.org

TAG=docker.openmodelica.org/build-deps:v1.13-qt4-xenial

if false; then
  ARGS="--build-arg REPO=ubuntu:xenial"
else
  ARGS="--build-arg REPO=$TAG"
fi

docker build --pull $ARGS -t "$TAG" - < Dockerfile.build-deps-qt4
docker push "$TAG"
