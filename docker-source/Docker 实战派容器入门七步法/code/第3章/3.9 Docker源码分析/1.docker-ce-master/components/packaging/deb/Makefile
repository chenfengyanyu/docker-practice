include ../common.mk

PLUGINS_DIR=$(realpath $(CURDIR)/../plugins)
GITCOMMIT?=$(shell cd $(realpath $(CURDIR)/../src/github.com/docker/cli) && git rev-parse --short HEAD)
CLI_GITCOMMIT?=$(shell cd $(realpath $(CURDIR)/../src/github.com/docker/cli) && git rev-parse --short HEAD)
ENGINE_GITCOMMIT?=$(shell cd $(realpath $(CURDIR)/../src/github.com/docker/docker) && git rev-parse --short HEAD)
GO_BASE_IMAGE=golang
GO_IMAGE?=$(GO_BASE_IMAGE):$(GO_VERSION)-buster
GEN_DEB_VER=$(shell ./gen-deb-ver $(realpath $(CURDIR)/../src/github.com/docker/cli) "$(VERSION)")
EPOCH?=5
SCAN_GITCOMMIT?=$(shell cd $(realpath $(CURDIR)/../src/github.com/docker/scan-cli-plugin) && git rev-parse --short HEAD)

ifdef BUILD_IMAGE
	BUILD_IMAGE_FLAG=--build-arg $(BUILD_IMAGE)
endif

COMMON_FILES=common
BUILD?=DOCKER_BUILDKIT=1 \
	docker build \
	$(BUILD_IMAGE_FLAG) \
	--build-arg GO_IMAGE=$(GO_IMAGE) \
	--build-arg COMMON_FILES=$(COMMON_FILES) \
	-t debbuild-$@/$(ARCH) \
	-f $@/Dockerfile \
	.

# Additional flags may be necessary at some point
RUN_FLAGS=
RUN?=docker run --rm \
	-e PLATFORM \
	-e EPOCH='$(EPOCH)' \
	-e DEB_VERSION=$(word 1, $(GEN_DEB_VER)) \
	-e VERSION=$(word 2, $(GEN_DEB_VER)) \
	-e CLI_GITCOMMIT=$(CLI_GITCOMMIT) \
	-e ENGINE_GITCOMMIT=$(ENGINE_GITCOMMIT) \
	-e SCAN_VERSION=$(DOCKER_SCAN_REF) \
	-e SCAN_GITCOMMIT=$(SCAN_GITCOMMIT) \
	-v $(CURDIR)/debbuild/$@:/build \
	$(RUN_FLAGS) \
	debbuild-$@/$(ARCH)

DEBIAN_VERSIONS ?= debian-buster debian-bullseye
UBUNTU_VERSIONS ?= ubuntu-bionic ubuntu-focal ubuntu-hirsute ubuntu-impish
RASPBIAN_VERSIONS ?= raspbian-buster raspbian-bullseye
DISTROS := $(DEBIAN_VERSIONS) $(UBUNTU_VERSIONS) $(RASPBIAN_VERSIONS)

.PHONY: help
help: ## show make targets
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf " \033[36m%-20s\033[0m  %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: clean
clean: ## remove build artifacts
	[ ! -d debbuild ] || $(CHOWN) -R $(shell id -u):$(shell id -g) debbuild
	$(RM) -r debbuild
	[ ! -d sources ] || $(CHOWN) -R $(shell id -u):$(shell id -g) sources
	$(RM) -r sources
	-docker builder prune -f --filter until=24h

.PHONY: deb
deb: ubuntu debian ## build all deb packages except for raspbian

.PHONY: ubuntu
ubuntu: $(UBUNTU_VERSIONS) ## build all ubuntu deb packages

.PHONY: debian
debian: $(DEBIAN_VERSIONS) ## build all debian deb packages

.PHONY: raspbian
raspbian: $(RASPBIAN_VERSIONS) ## build all raspbian deb packages

.PHONY: $(DISTROS)
$(DISTROS): sources
	@echo "== Building packages for $@ =="
	mkdir -p "debbuild/$@"
	$(BUILD)
	$(RUN)
	$(CHOWN) -R $(shell id -u):$(shell id -g) "debbuild/$@"

.PHONY: sources
sources: sources/cli.tgz sources/engine.tgz sources/scan-cli-plugin.tgz sources/plugin-installers.tgz

sources/engine.tgz:
	mkdir -p $(@D)
	docker run --rm -w /v \
		-v $(realpath $(CURDIR)/../src/github.com/docker/docker):/engine \
		-v $(CURDIR)/$(@D):/v \
		alpine \
		tar -C / -c -z -f /v/engine.tgz --exclude .git engine

sources/cli.tgz:
	mkdir -p $(@D)
	docker run --rm -w /v \
		-v $(realpath $(CURDIR)/../src/github.com/docker/cli):/cli \
		-v $(CURDIR)/$(@D):/v \
		alpine \
		tar -C / -c -z -f /v/cli.tgz --exclude .git cli

sources/scan-cli-plugin.tgz:
	mkdir -p $(@D)
	docker run --rm -w /v \
		-v $(realpath $(CURDIR)/../src/github.com/docker/scan-cli-plugin):/scan-cli-plugin \
		-v $(CURDIR)/$(@D):/v \
		alpine \
		tar -C / -c -z -f /v/scan-cli-plugin.tgz --exclude .git scan-cli-plugin

sources/plugin-installers.tgz: $(wildcard ../plugins/*)
	docker run --rm -w /v \
		-v $(PLUGINS_DIR):/plugins \
		-v $(CURDIR)/$(@D):/v \
		alpine \
		tar -C / -c -z -f /v/plugin-installers.tgz --exclude .git plugins

# See ARCHES in common.mk. Could not figure out how to match both distro and arch.
BUNDLES:=$(addsuffix .tar.gz,$(addprefix debbuild/bundles-ce-%-,$(ARCHES)))

$(BUNDLES): %
	tar czf $@ --transform="s|^debbuild/\(.*\)|bundles/$(VERSION)/build-deb/\1|" debbuild/$*
