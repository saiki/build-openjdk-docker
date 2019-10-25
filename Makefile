fedora-container:
	docker build -f ./docker/Dockerfile.fedora -t build-openjdk-fedora ./docker

fedora:
	docker run --mount type=bind,src=$(CURDIR)/src,dst=/jdk build-openjdk-fedora

fedora-bash:
	docker run --mount type=bind,src=$(CURDIR)/src,dst=/jdk -it -e bash build-openjdk-fedora
