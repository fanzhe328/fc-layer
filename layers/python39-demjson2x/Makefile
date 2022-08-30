.PHONY: all build push
SHELL := /bin/bash

WORK_DIR := $(shell pwd)
export WORK_DIR

# layer image
LAYER_IMAGE := fc-layer:v1

build_layer:
	docker build -t ${LAYER_IMAGE} -f Dockerfile .
	docker run --rm -v ${WORK_DIR}:/tmp ${LAYER_IMAGE} sh -c "cp /opt/layer.zip /tmp/"