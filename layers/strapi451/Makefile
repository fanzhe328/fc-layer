.PHONY: all build buildx push
SHELL := /bin/bash

WORK_DIR := $(shell pwd)
export WORK_DIR

REGIONS := "cn-shenzhen"

# layer image
LAYER_IMAGE := fc-layer:strapi451

build:
	docker build -t ${LAYER_IMAGE} -f Dockerfile .
# docker run --rm --entrypoint "" -v ${WORK_DIR}:/tmp ${LAYER_IMAGE} sh -c "cp /opt/layer.zip /tmp/"
# docker rmi ${LAYER_IMAGE}

buildx:
	docker buildx build --push --platform linux/amd64 -t ${LAYER_IMAGE} -f Dockerfile .
	docker run --rm --entrypoint "" -v ${WORK_DIR}:/tmp ${LAYER_IMAGE} sh -c "cp /opt/layer.zip /tmp/"

publish:
	REGIONS=${REGIONS} ./publish-layer.sh