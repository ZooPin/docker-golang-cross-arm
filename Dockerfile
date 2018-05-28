FROM golang:1.10.2-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabihf \
		libc6-dev-armhf-cross \
	&& rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
