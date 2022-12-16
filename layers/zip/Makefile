.PHONY: all build push
SHELL := /bin/bash

WORK_DIR := $(shell pwd)
export WORK_DIR

# layer image
LAYER_IMAGE := aliyunfc/alpine-zip:latest

build:
	docker build -t ${LAYER_IMAGE} -f Dockerfile .

buildx:
	docker buildx build --push --platform linux/amd64,linux/arm64 -t ${LAYER_IMAGE} -f Dockerfile .