fedora-container:
	docker build -f ./docker/Dockerfile.fedora -t build-openjdk-fedora ./docker

clone:
	hg clone https://hg.openjdk.java.net/jdk/jdk ./src

fedora:
	docker run --mount type=bind,src=$(CURDIR)/src,dst=/jdk build-openjdk-fedora
