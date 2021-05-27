include make_env

NS ?= sagarkundral24
VERSION ?= v2

IMAGE_NAME ?= node-web-app
CONTAINER_NAME ?= node-container
CONTAINER_INSTANCE ?= default


.PHONY: help build run all

help:
    @echo "Makefile commands:"
    @echo "build"
    @echo "run"
    @echo "all"

build: Dockerfile
    docker build -t $(NS)/$(IMAGE_NAME):$(VERSION) -f Dockerfile .

run:
    docker run --name $(CONTAINER_NAME)-$(CONTAINER_INSTANCE) $(PORTS) -d  $(NS)/$(IMAGE_NAME):$(VERSION)

.DEFAULT_GOAL := all


all: build run
