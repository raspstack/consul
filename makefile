DOCKER_IMAGE_VERSION=latest
DOCKER_IMAGE_NAME=raspstack/consul
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build: docker build -t $(DOCKER_IMAGE_TAGNAME) .
	   docker tag -f $(DOCKER_IMAGE_TAGNAME) $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) /bin/echo "Success."

push:
	docker push $(DOCKER_IMAGE_NAME)