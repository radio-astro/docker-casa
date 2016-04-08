DOCKER_REPO=radioastro/casa:4.6.0


.PHONY: build clean run upload download


all: build run clean upload


download:
	./download.sh


build: download
	docker build -t ${DOCKER_REPO} .


clean:
	docker rmi ${DOCKER_REPO}


run:
	docker run -ti ${DOCKER_REPO}


upload: build
	docker push ${DOCKER_REPO}
