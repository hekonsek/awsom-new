all: format build

build:
	GO111MODULE=on go build -o awsom main/root.go

format:
	GO111MODULE=on go fmt $(PACKAGES)