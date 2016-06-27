VERSION=4.6.0
DOCKER_REPO=radioastro/casa:$(VERSION)


.PHONY: build clean run upload download


all: build run upload


download:
	./download.sh $(VERSION)


build: download
	docker build --build-arg VERSION=$(VERSION) -t ${DOCKER_REPO} .


clean:
	docker rmi ${DOCKER_REPO}


run:
	docker run -ti ${DOCKER_REPO}


upload: build
	docker push ${DOCKER_REPO}
