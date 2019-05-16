PACKAGES := github.com/hekonsek/awsom github.com/hekonsek/awsom/main

all: format silent-test build

format:
	GO111MODULE=on go fmt $(PACKAGES)

build:
	GO111MODULE=on go build -o awsom main/*.go

test: build
	GO111MODULE=on go test -v $(PACKAGES)

silent-test:
	GO111MODULE=on go test $(PACKAGES)