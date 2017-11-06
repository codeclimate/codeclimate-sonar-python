.PHONY: image test

IMAGE_NAME ?= codeclimate/codeclimate-sonar-python

image:
	docker build --rm -t $(IMAGE_NAME) .

test: image
	docker run --rm -ti -w /usr/src/app -u root $(IMAGE_NAME) gradle clean test --info
