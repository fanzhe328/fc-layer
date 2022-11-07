.PHONY: all build push
SHELL := /bin/bash

WORK_DIR := $(shell pwd)
export WORK_DIR

# layer image
LAYER_IMAGE := fc-layer:python3-pyramid-v1

REGIONS := "cn-shenzhen"

build:
	docker build -t ${LAYER_IMAGE} -f Dockerfile .
	docker run --rm --entrypoint "" -v ${WORK_DIR}:/tmp ${LAYER_IMAGE} sh -c "cp /opt/layer.zip /tmp/"

publish:
	REGIONS=${REGIONS} ./publish-layer.sh