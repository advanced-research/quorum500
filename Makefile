GIT_HASH=$(shell git rev-parse --short HEAD)

# https://stackoverflow.com/a/18137056/1294631
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
base_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
SERVICE ?= $(base_dir)

BUILDENV :=
BUILDENV += CGO_ENABLED=0
TESTFLAGS := -v -cover

LINKFLAGS :=-s -X main.gitHash=$(GIT_HASH) -extldflags "-static"

build: clean
	$(BUILDENV) GOOS=linux GOARCH=amd64 go build -o $(SERVICE) -a -ldflags '$(LINKFLAGS)'

clean:
	rm -f $(SERVICE)

.PHONY: test
test:
	$(BUILDENV) go test $(TESTFLAGS) ./...
